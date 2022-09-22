FROM registry.cn-beijing.aliyuncs.com/cube_docker/cicd:base
RUN cd /usr/local/work/AOPLog/ \
    && git pull/ \
    && mvn clean package \
    && cp ./target/AOPLog-0.0.1-SNAPSHOT.jar /usr/local/java/ \