# region main
FROM openjdk:11-jre

# 从 builder 阶段中复制文件到镜像中
COPY ./target/demo.jar /app/demos.jar

# 设置工作目录
WORKDIR /app

# 显示声明需要使用的端口
EXPOSE 8080

# 配置镜像运行命令
CMD java -jar demos.jar
# endregion main