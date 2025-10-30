#!/bin/bash

# Docker Development Environment - Quick Start Script
# This script helps you quickly set up and start the development environment
# Docker 开发环境 - 快速启动脚本

set -e

echo "🐳 Docker Development Environment Setup"
echo "======================================"
echo "🐳 Docker 开发环境设置"
echo "======================"

# Check if .env file exists
if [ ! -f .env ]; then
    echo "📝 Creating .env file from template..."
    echo "📝 从模板创建 .env 文件..."
    cp .env.example .env
    echo "✅ .env file created. Please edit it with your preferred settings."
    echo "✅ .env 文件已创建。请编辑它以设置您的偏好配置。"
    echo "   You can use: nano .env or vim .env"
    echo "   您可以使用: nano .env 或 vim .env"
    echo ""
    read -p "Press Enter to continue after editing .env file... / 编辑 .env 文件后按回车继续..."
fi

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker and try again."
    echo "❌ Docker 未运行。请启动 Docker 后重试。"
    exit 1
fi

# Check if Docker Compose is available
if ! command -v docker compose > /dev/null 2>&1; then
    echo "❌ Docker Compose is not available. Please install Docker Compose and try again."
    echo "❌ Docker Compose 不可用。请安装 Docker Compose 后重试。"
    exit 1
fi

echo "🔧 Validating configuration..."
echo "🔧 验证配置..."
docker compose config > /dev/null
echo "✅ Configuration is valid"
echo "✅ 配置有效"

echo "🚀 Starting services..."
echo "🚀 启动服务..."
docker compose up -d --build

echo "⏳ Waiting for services to start..."
echo "⏳ 等待服务启动..."
sleep 10

echo "📊 Service Status:"
echo "📊 服务状态:"
docker compose ps

echo ""
echo "🎉 Development environment is ready!"
echo "🎉 开发环境已准备就绪！"
echo ""
echo "📋 Service Information:"
echo "📋 服务信息:"
echo "  • Nginx:     http://localhost"
echo "  • MySQL:     localhost:3306"
echo "  • PostgreSQL: localhost:5432"
echo "  • Redis:     localhost:6380"
echo ""
echo "📁 Your application code goes in: ./app/"
echo "📁 您的应用代码放在: ./app/"
echo "📝 Logs are available in: ./docker/logs/"
echo "📝 日志文件位于: ./docker/logs/"
echo ""
echo "🛠️  Useful commands:"
echo "🛠️  常用命令:"
echo "  • View logs:    docker compose logs -f"
echo "  • Stop services: docker compose down"
echo "  • Restart:      docker compose restart"
echo ""
echo "Happy coding! 🚀"
echo "祝您编码愉快！ 🚀"
