# 1.修改项目配置文件 application.yml
   active: docker

# 2.先进JAVA项目根路径 maven打包
   mvn clean package


# 3.构建镜像__容器组（当你改变本地代码，也可重新构建镜像）
   docker-compose build

# 4.配置host

# jeecgboot
127.0.0.1   jeecg-boot-redis
127.0.0.1   jeecg-boot-mysql
127.0.0.1   jeecg-boot-system

192.168.0.97 jeecg-boot-redis
192.168.0.97 jeecg-boot-mysql
192.168.0.97 jeecg-boot-system

# 5.启动镜像__容器组（也可取代运行中的镜像）
   docker-compose up -d

docker-compose logs -f

