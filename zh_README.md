# 🐳 Docker 开发环境

一个基于 Docker 的现代化 Web 技术栈开发环境。

## ✨ 功能特性

- **Nginx 1.28** - 高性能 Web 服务器和反向代理
- **MySQL 8.0** - 可靠的关系型数据库
- **PostgreSQL 16** - 先进的开源数据库
- **Redis 7.2** - 内存数据结构存储
- **一键部署** - 使用 Docker Compose 一键启动
- **环境变量** - 安全的配置管理
- **生产就绪** - 针对开发和生产环境优化的配置

## 🚀 快速开始

### 前置要求

- [Docker](https://docs.docker.com/get-docker/) (20.10+)
- [Docker Compose](https://docs.docker.com/compose/install/) (2.0+)

### 安装步骤

1. **克隆仓库**
   ```bash
   git clone https://github.com/dengmengmian/docker-dev-environment.git
   cd docker-dev-environment
   ```

2. **配置环境变量**
   ```bash
   cp .env.example .env
   # 编辑 .env 文件，设置您的偏好配置
   ```

3. **启动所有服务**
   ```bash
   docker compose up -d
   ```

4. **验证服务运行状态**
   ```bash
   docker compose ps
   ```

## 📁 项目结构

```
├── docker/
│   ├── files/           # 服务配置文件
│   │   ├── nginx/       # Nginx 配置
│   │   ├── mysql/       # MySQL 配置
│   │   ├── postgres/    # PostgreSQL 配置
│   │   └── redis/       # Redis 配置
│   ├── data/            # 数据库数据卷
│   └── logs/            # 服务日志
├── app/                 # 您的应用代码
├── docker-compose.yml   # 服务定义
└── .env.example         # 环境变量模板
```

## 🔧 配置说明

### 环境变量

基于 `.env.example` 创建 `.env` 文件：

```bash
# 数据库配置
MYSQL_ROOT_PASSWORD=your_secure_password
MYSQL_DATABASE=develop
MYSQL_USER=develop
MYSQL_PASSWORD=your_secure_password

POSTGRES_DB=develop
POSTGRES_USER=develop
POSTGRES_PASSWORD=your_secure_password

# Nginx 配置
NGINX_DOMAIN=local.my.com

# 时区
TZ=Asia/Shanghai
```

### 服务端口

| 服务 | 端口 | 描述 |
|------|------|------|
| Nginx | 80 | Web 服务器 |
| MySQL | 3306 | MySQL 数据库 |
| PostgreSQL | 5432 | PostgreSQL 数据库 |
| Redis | 6380 | Redis 缓存 |

## 🛠️ 使用方法

### 基本命令

```bash
# 启动所有服务
docker compose up -d

# 停止所有服务
docker compose down

# 查看日志
docker compose logs -f

# 重启特定服务
docker compose restart nginx

# 重新构建并启动
docker compose up -d --build
```

### 数据库连接

**MySQL:**
- 主机: `localhost`
- 端口: `3306`
- 数据库: `develop`
- 用户名: `develop`
- 密码: (来自您的 .env 文件)

**PostgreSQL:**
- 主机: `localhost`
- 端口: `5432`
- 数据库: `develop`
- 用户名: `develop`
- 密码: (来自您的 .env 文件)

**Redis:**
- 主机: `localhost`
- 端口: `6380`

## 🔒 安全说明

- 所有密码都通过环境变量配置
- 默认密码仅用于开发环境
- 生产环境使用前请更改所有默认密码
- 数据库数据持久化存储在 Docker 卷中

## 🤝 贡献指南

1. Fork 本仓库
2. 创建功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'Add some amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 创建 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🆘 支持

如果您遇到问题或有疑问：

1. 查看 [Issues](https://github.com/dengmengmian/docker-dev-environment/issues) 页面
2. 创建新问题并提供详细信息
3. 参与讨论获取社区支持

## 🙏 致谢

- [Docker](https://www.docker.com/) 提供容器化技术
- [Nginx](https://nginx.org/) 提供 Web 服务
- [MySQL](https://www.mysql.com/) 和 [PostgreSQL](https://www.postgresql.org/) 提供数据库
- [Redis](https://redis.io/) 提供缓存服务

## 🌐 语言支持

- 🇨🇳 [中文](zh_README.md) (当前)
- 🇺🇸 [English](README.md)
