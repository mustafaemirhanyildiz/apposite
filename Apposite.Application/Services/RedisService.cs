using StackExchange.Redis;

namespace Apposite.Application.Services
{
    public class RedisService
    {
        private readonly string _host;

        private readonly int _port;
        private readonly string _parameters;

        public ConnectionMultiplexer _ConnectionMultiplexer { get; internal set; }

        public RedisService(string host, int port, string parameters)
        {
            _host = host;
            _port = port;
            _parameters = parameters;
        }

        public void Connect() => _ConnectionMultiplexer = ConnectionMultiplexer.Connect($"{_host}:{_port}{_parameters}");

        public IDatabase GetDb(int db = 1) => _ConnectionMultiplexer.GetDatabase(db);
    }

}