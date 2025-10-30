# 🐳 Docker Development Environment

A comprehensive Docker-based development environment with modern web stack services.

## ✨ Features

- **Nginx 1.28** - High-performance web server and reverse proxy
- **MySQL 8.0** - Reliable relational database
- **PostgreSQL 16** - Advanced open-source database
- **Redis 7.2** - In-memory data structure store
- **Easy Setup** - One-command deployment with Docker Compose
- **Environment Variables** - Secure configuration management
- **Production Ready** - Optimized configurations for development and production

## 🚀 Quick Start

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) (20.10+)
- [Docker Compose](https://docs.docker.com/compose/install/) (2.0+)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/dengmengmian/docker-dev-environment.git
   cd docker-dev-environment
   ```

2. **Configure environment variables**
   ```bash
   cp .env.example .env
   # Edit .env with your preferred settings
   ```

3. **Start all services**
   ```bash
   docker compose up -d
   ```

4. **Verify services are running**
   ```bash
   docker compose ps
   ```

## 📁 Project Structure

```
├── docker/
│   ├── files/           # Service configurations
│   │   ├── nginx/       # Nginx configs
│   │   ├── mysql/       # MySQL configs
│   │   ├── postgres/    # PostgreSQL configs
│   │   └── redis/       # Redis configs
│   ├── data/            # Database data volumes
│   └── logs/            # Service logs
├── app/                 # Your application code
├── docker-compose.yml   # Service definitions
└── .env.example         # Environment template
```

## 🔧 Configuration

### Environment Variables

Create a `.env` file based on `.env.example`:

```bash
# Database Configuration
MYSQL_ROOT_PASSWORD=your_secure_password
MYSQL_DATABASE=develop
MYSQL_USER=develop
MYSQL_PASSWORD=your_secure_password

POSTGRES_DB=develop
POSTGRES_USER=develop
POSTGRES_PASSWORD=your_secure_password

# Nginx Configuration
NGINX_DOMAIN=local.my.com

# Timezone
TZ=Asia/Shanghai
```

### Service Ports

| Service | Port | Description |
|---------|------|-------------|
| Nginx | 80 | Web server |
| MySQL | 3306 | MySQL database |
| PostgreSQL | 5432 | PostgreSQL database |
| Redis | 6380 | Redis cache |

## 🛠️ Usage

### Basic Commands

```bash
# Start all services
docker compose up -d

# Stop all services
docker compose down

# View logs
docker compose logs -f

# Restart a specific service
docker compose restart nginx

# Rebuild and start
docker compose up -d --build
```

### Database Connections

**MySQL:**
- Host: `localhost`
- Port: `3306`
- Database: `develop`
- Username: `develop`
- Password: (from your .env file)

**PostgreSQL:**
- Host: `localhost`
- Port: `5432`
- Database: `develop`
- Username: `develop`
- Password: (from your .env file)

**Redis:**
- Host: `localhost`
- Port: `6380`

## 🔒 Security

- All passwords are configurable via environment variables
- Default passwords are provided for development only
- Change all default passwords before production use
- Database data is persisted in Docker volumes

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/dengmengmian/docker-dev-environment/issues) page
2. Create a new issue with detailed information
3. Join our discussions for community support

## 🙏 Acknowledgments

- [Docker](https://www.docker.com/) for containerization
- [Nginx](https://nginx.org/) for web serving
- [MySQL](https://www.mysql.com/) and [PostgreSQL](https://www.postgresql.org/) for databases
- [Redis](https://redis.io/) for caching

## 🌐 Language Support

- 🇺🇸 [English](README.md) (Default)
- 🇨🇳 [中文](zh_README.md)