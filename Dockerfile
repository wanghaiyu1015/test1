FROM docker.io/centos:8

MAINTAINER bxc
WORKDIR /app
ADD target/test-0.0.1-SNAPSHOT.jar /app/app.jar
CMD ["java", "-jar", "app.jar","--spring.profiles.active=pro"]


# docker build -f Dockerfile -t test . 创建docker镜像
# docker run -d --name test -p 端口号 test  创建容器并运行
