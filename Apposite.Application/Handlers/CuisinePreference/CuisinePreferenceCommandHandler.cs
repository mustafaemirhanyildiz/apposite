
using Apposite.Application.Commands.CuisinePreference;
using Apposite.Application.Dto.ElasticSearch.CuisinePreference;
using Apposite.Application.Mapping;
using Apposite.Application.Services;
using Apposite.Application.Services.CuisinePreferenceService;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Apposite.Application.Handlers.CuisinePreference
{
    public class CuisinePreferenceCommandHandler : IRequestHandler<CreateCuisinePreferenceCommand, Response<NoContent>>,
                                            IRequestHandler<CreateCuisinePreferenceBulkCommand, Response<NoContent>>,
                                            IRequestHandler<UpdateCuisinePreferenceCommand, Response<NoContent>>,
                                            IRequestHandler<DeleteCuisinePreferenceCommand, Response<NoContent>>
    {

        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;
        private readonly ICuisinePreferenceService _cuisinePreferenceService;


        public CuisinePreferenceCommandHandler(AppositeDbContext dbContext, RedisService redisService, ICuisinePreferenceService cuisinePreferenceService)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _cuisinePreferenceService = cuisinePreferenceService;
        }

        public async Task<Response<NoContent>> Handle(CreateCuisinePreferenceCommand request, CancellationToken cancellationToken)
        {
            var cuisinePreference = ObjectMapper.Mapper.Map<Domain.Entities.CuisinePreference>(request);
            await _dbContext.CuisinePreferences.AddAsync(cuisinePreference, cancellationToken);
            await _cuisinePreferenceService.CreateCuisinePreferenceAsync(ObjectMapper.Mapper.Map<CreateElasticCuisinePreferenceDto>(cuisinePreference));
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(CreateCuisinePreferenceBulkCommand request, CancellationToken cancellationToken)
        {
            var cuisinePreferences = ObjectMapper.Mapper.Map<List<Domain.Entities.CuisinePreference>>(request.CuisinePreferences);
            await _dbContext.CuisinePreferences.AddRangeAsync(cuisinePreferences, cancellationToken);
            await _cuisinePreferenceService.CreateCuisinePreferenceBulkAsync(ObjectMapper.Mapper.Map<List<CreateElasticCuisinePreferenceDto>>(cuisinePreferences));
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(UpdateCuisinePreferenceCommand request, CancellationToken cancellationToken)
        {
            var cuisinePreference = await _dbContext.CuisinePreferences.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
            if (cuisinePreference == null)
            {
                return Response<NoContent>.Fail(404, "Cuisine Preference not found.");
            }

            var updatedCuisinePreference = ObjectMapper.Mapper.Map(request, cuisinePreference);
            _dbContext.CuisinePreferences.Update(updatedCuisinePreference);
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(DeleteCuisinePreferenceCommand request, CancellationToken cancellationToken)
        {
            var cuisinePreference = await _dbContext.CuisinePreferences.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
            if (cuisinePreference == null)
            {
                return Response<NoContent>.Fail(404, "Cuisine Preference not found.");
            }

            _dbContext.CuisinePreferences.Remove(cuisinePreference);
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }
    }
}