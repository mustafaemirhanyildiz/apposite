using Apposite.Application.Commands.Health;
using Apposite.Application.Services;
using Apposite.Core.Dtos;
using Apposite.Persistence;
using MediatR;
using Microsoft.EntityFrameworkCore;
using Apposite.Application.Mapping;
using Apposite.Application.Services.HealthService;
using Apposite.Application.Dto.ElasticSearch.Health;

namespace Apposite.Application.Handlers.Health
{
    public class HealthCommandHandler : IRequestHandler<CreateHealthCommand, Response<NoContent>>,
                                            IRequestHandler<CreateHealthBulkCommand, Response<NoContent>>,
                                            IRequestHandler<UpdateHealthCommand, Response<NoContent>>,
                                            IRequestHandler<DeleteHealthCommand, Response<NoContent>>
    {

        private readonly AppositeDbContext _dbContext;
        private readonly RedisService _redisService;
        private readonly IHealthService _healthService;

        public HealthCommandHandler(AppositeDbContext dbContext, RedisService redisService, IHealthService healthService)
        {
            _dbContext = dbContext;
            _redisService = redisService;
            _healthService = healthService;
        }
        public async Task<Response<NoContent>> Handle(CreateHealthCommand request, CancellationToken cancellationToken)
        {
            var health = ObjectMapper.Mapper.Map<Domain.Entities.Health>(request);
            await _dbContext.Healths.AddAsync(health, cancellationToken);
            await _healthService.CreateHealthAsync(ObjectMapper.Mapper.Map<CreateElasticHealthDto>(health));
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(CreateHealthBulkCommand request, CancellationToken cancellationToken)
        {
            var healths = ObjectMapper.Mapper.Map<List<Domain.Entities.Health>>(request.Healths);
            await _dbContext.Healths.AddRangeAsync(healths, cancellationToken);
            await _healthService.CreateHealthBulkAsync(ObjectMapper.Mapper.Map<List<CreateElasticHealthDto>>(healths));
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(UpdateHealthCommand request, CancellationToken cancellationToken)
        {
            var health = await _dbContext.Healths.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
            if (health == null)
            {
                return Response<NoContent>.Fail(404, "Health not found.");
            }

            var updatedHealth = ObjectMapper.Mapper.Map(request, health);
            _dbContext.Healths.Update(updatedHealth);
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }

        public async Task<Response<NoContent>> Handle(DeleteHealthCommand request, CancellationToken cancellationToken)
        {
            var health = await _dbContext.Healths.FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);
            if (health == null)
            {
                return Response<NoContent>.Fail(404, "Health not found.");
            }

            _dbContext.Healths.Remove(health);
            await _dbContext.SaveChangesAsync();
            return Response<NoContent>.Success(204);
        }
    }
}
