# Contributing to Docker Development Environment

Thank you for your interest in contributing to this project! This document provides guidelines and information for contributors.

## 🤝 How to Contribute

### Reporting Issues

Before creating an issue, please:

1. **Search existing issues** to avoid duplicates
2. **Check the documentation** in README.md
3. **Verify the issue** with the latest version

When creating an issue, please include:

- **Clear title** describing the problem
- **Detailed description** of the issue
- **Steps to reproduce** the problem
- **Expected vs actual behavior**
- **Environment details** (OS, Docker version, etc.)
- **Relevant logs** or error messages

### Suggesting Enhancements

For feature requests or improvements:

1. **Check existing issues** for similar suggestions
2. **Provide clear use cases** and benefits
3. **Consider backward compatibility**
4. **Include implementation ideas** if possible

### Pull Requests

#### Before You Start

1. **Fork the repository**
2. **Create a feature branch** from `main`
3. **Ensure you have the latest changes**

#### Development Process

1. **Follow coding standards**
   - Use clear, descriptive commit messages
   - Keep changes focused and atomic
   - Test your changes thoroughly

2. **Update documentation**
   - Update README.md if needed
   - Add comments for complex configurations
   - Update version numbers if applicable

3. **Test your changes**
   ```bash
   # Test the configuration
   docker compose config

   # Start services
   docker compose up -d

   # Verify all services are running
   docker compose ps

   # Check logs for any errors
   docker compose logs
   ```

#### Pull Request Guidelines

- **Clear title** describing the changes
- **Detailed description** of what was changed and why
- **Reference related issues** using keywords like "Fixes #123"
- **Include screenshots** for UI changes
- **Test results** showing the changes work as expected

## 🛠️ Development Setup

### Prerequisites

- Docker 20.10+
- Docker Compose 2.0+
- Git

### Local Development

1. **Clone your fork**
   ```bash
   git clone https://github.com/dengmengmian/docker-dev-environment.git
   cd docker-dev-environment
   ```

2. **Create environment file**
   ```bash
   cp .env.example .env
   # Edit .env with your settings
   ```

3. **Start development environment**
   ```bash
   docker compose up -d
   ```

4. **Make your changes** and test them

5. **Commit and push**
   ```bash
   git add .
   git commit -m "Add: descriptive message"
   git push origin your-feature-branch
   ```

## 📋 Code Standards

### Docker Compose

- Use environment variables for sensitive data
- Keep service names descriptive and consistent
- Use health checks where appropriate
- Document any non-standard configurations

### Configuration Files

- Follow the existing naming conventions
- Use comments to explain complex settings
- Keep configurations production-ready
- Test configurations before committing

### Documentation

- Use clear, concise language
- Include code examples where helpful
- Keep documentation up-to-date with changes
- Use proper markdown formatting

## 🧪 Testing

### Before Submitting

- [ ] All services start without errors
- [ ] Configuration files are valid
- [ ] Environment variables work correctly
- [ ] Documentation is updated
- [ ] No sensitive data is exposed

### Test Commands

```bash
# Validate Docker Compose configuration
docker compose config

# Start all services
docker compose up -d

# Check service health
docker compose ps

# View service logs
docker compose logs

# Test database connections
docker compose exec mysql-db mysql -u develop -p develop
docker compose exec postgres-db psql -U develop -d develop

# Clean up
docker compose down -v
```

## 📝 Commit Message Guidelines

Use clear, descriptive commit messages:

```
Add: PostgreSQL service configuration
Fix: Nginx configuration syntax error
Update: README with new service information
Remove: Deprecated configuration options
```

## 🏷️ Versioning

This project follows [Semantic Versioning](https://semver.org/):

- **MAJOR** version for incompatible changes
- **MINOR** version for new features (backward compatible)
- **PATCH** version for bug fixes (backward compatible)

## 📞 Getting Help

- **GitHub Issues** for bug reports and feature requests
- **GitHub Discussions** for questions and general discussion
- **Pull Request comments** for specific code reviews

## 🙏 Recognition

Contributors will be recognized in:

- README.md acknowledgments
- Release notes
- GitHub contributors page

Thank you for contributing to make this project better! 🚀

## 🌐 Language Support

- 🇺🇸 [English](CONTRIBUTING.md) (Default)
- 🇨🇳 [中文](zh_CONTRIBUTING.md)
