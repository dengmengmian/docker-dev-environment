# 全平台开发环境

全平台开发环境

## 简介

用docker容器服务的方式搭建开发环境，易于维护、升级。使用前需了解Docker的基本概念，常用基本命令。
可以一条条命令执行docker命令来构建镜像，容器。这里推荐使用docker-compose来管理，执行项目，下面是使用流程。

相关软件版本：

- MySQL 5.7
- Nginx 1.12
- Redis 3.2

## 使用
> 如修改了docker-copmose 文件，请先执行docker-compose up --bulid，避免修改无效。

### 1.安装Docker，Docker-compose

- Docker，详见官方文档：https://docs.docker.com/engine/installation/linux/docker-ce/centos/
- docker-compose，文档：https://docs.docker.com/compose/install/

### 目录详情和介绍

```
docker/
├── app/ 项目代码
│   ├── project_1 具体项目
├── docker/  主要配置（nginx配置文件，log文件，mysql数据，redis数据）
│   ├── data mysql,redis映射本地的数据文件
│   ├── files 版本核心配置文件
│   ├── logs nginx 映射外层的log日志
├── golang/
├── docker-compose.yml
```
