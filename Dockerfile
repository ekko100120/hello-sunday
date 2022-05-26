# 该镜像需要依赖的基础镜像
#FROM openjdk:11
FROM gcr.io/distroless/java:11

MAINTAINER kenny
# 将当前目录下的jar包复制到docker容器的/目录下
#COPY build/libs/hello-sunday-1.0-SNAPSHOT.jar /app/build/app.jar

# 声明服务运行在8088端口
EXPOSE 8088

# 指定docker容器启动时运行jar包
ENTRYPOINT ["java", "-jar", "/app/build/app.jar"]

#ADD mall-tiny-jenkins-1.0-SNAPSHOT.jar /mall-tiny-jenkins-1.0-SNAPSHOT.jar
#EXPOSE 8088
#ENTRYPOINT ["java", "-jar","/mall-tiny-jenkins-1.0-SNAPSHOT.jar"]
# 指定维护者的名字
#MAINTAINER macro