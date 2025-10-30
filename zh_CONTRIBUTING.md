# 贡献指南 - Docker 开发环境

感谢您对参与此项目的兴趣！本文档为贡献者提供指导原则和信息。

## 🤝 如何贡献

### 报告问题

在创建问题之前，请：

1. **搜索现有问题** 避免重复
2. **查看文档** 在 README.md 中
3. **验证问题** 使用最新版本

创建问题时，请包含：

- **清晰的标题** 描述问题
- **详细描述** 问题详情
- **重现步骤** 如何重现问题
- **预期与实际行为** 对比
- **环境详情** (操作系统、Docker 版本等)
- **相关日志** 或错误信息

### 建议改进

对于功能请求或改进建议：

1. **检查现有问题** 寻找类似建议
2. **提供清晰用例** 和好处
3. **考虑向后兼容性**
4. **包含实现想法** 如果可能

### 拉取请求

#### 开始之前

1. **Fork 仓库**
2. **从 `main` 创建功能分支**
3. **确保您有最新更改**

#### 开发流程

1. **遵循编码标准**
   - 使用清晰、描述性的提交信息
   - 保持更改专注和原子性
   - 彻底测试您的更改

2. **更新文档**
   - 如需要更新 README.md
   - 为复杂配置添加注释
   - 如适用更新版本号

3. **测试您的更改**
   ```bash
   # 测试配置
   docker compose config

   # 启动服务
   docker compose up -d

   # 验证所有服务正在运行
   docker compose ps

   # 检查日志中的错误
   docker compose logs
   ```

#### 拉取请求指南

- **清晰标题** 描述更改
- **详细描述** 更改内容和原因
- **引用相关问题** 使用 "Fixes #123" 等关键词
- **包含截图** 用于 UI 更改
- **测试结果** 显示更改按预期工作

## 🛠️ 开发环境设置

### 前置要求

- Docker 20.10+
- Docker Compose 2.0+
- Git

### 本地开发

1. **克隆您的 Fork**
   ```bash
   git clone https://github.com/dengmengmian/docker-dev-environment.git
   cd docker-dev-environment
   ```

2. **创建环境文件**
   ```bash
   cp .env.example .env
   # 使用您的设置编辑 .env
   ```

3. **启动开发环境**
   ```bash
   docker compose up -d
   ```

4. **进行更改** 并测试

5. **提交和推送**
   ```bash
   git add .
   git commit -m "Add: 描述性信息"
   git push origin your-feature-branch
   ```

## 📋 代码标准

### Docker Compose

- 对敏感数据使用环境变量
- 保持服务名称描述性和一致性
- 在适当的地方使用健康检查
- 记录任何非标准配置

### 配置文件

- 遵循现有命名约定
- 使用注释解释复杂设置
- 保持配置生产就绪
- 提交前测试配置

### 文档

- 使用清晰、简洁的语言
- 在有用时包含代码示例
- 保持文档与更改同步
- 使用正确的 markdown 格式

## 🧪 测试

### 提交前检查

- [ ] 所有服务无错误启动
- [ ] 配置文件有效
- [ ] 环境变量正常工作
- [ ] 文档已更新
- [ ] 没有暴露敏感数据

### 测试命令

```bash
# 验证 Docker Compose 配置
docker compose config

# 启动所有服务
docker compose up -d

# 检查服务健康状态
docker compose ps

# 查看服务日志
docker compose logs

# 测试数据库连接
docker compose exec mysql-db mysql -u develop -p develop
docker compose exec postgres-db psql -U develop -d develop

# 清理
docker compose down -v
```

## 📝 提交信息指南

使用清晰、描述性的提交信息：

```
Add: PostgreSQL 服务配置
Fix: Nginx 配置语法错误
Update: 使用新服务信息更新 README
Remove: 已弃用的配置选项
```

## 🏷️ 版本控制

本项目遵循[语义化版本控制](https://semver.org/)：

- **主版本** 用于不兼容的更改
- **次版本** 用于新功能（向后兼容）
- **补丁版本** 用于错误修复（向后兼容）

## 📞 获取帮助

- **GitHub Issues** 用于错误报告和功能请求
- **GitHub Discussions** 用于问题和一般讨论
- **拉取请求评论** 用于特定代码审查

## 🙏 认可

贡献者将在以下地方获得认可：

- README.md 致谢
- 发布说明
- GitHub 贡献者页面

感谢您为改善这个项目做出贡献！🚀

## 🌐 语言支持

- 🇨🇳 [中文](zh_CONTRIBUTING.md) (当前)
- 🇺🇸 [English](CONTRIBUTING.md)
