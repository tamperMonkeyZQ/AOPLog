FROM maven:3.6.2-jdk-11
RUN mkdir /usr/local/work \
    && cd /usr/local/work \
    && git clone https://github.com/tamperMonkeyZQ/AOPLog.git \
    && cd AOPLog/ \
    && mvn clean package \
    && mkdir /usr/local/java \
    && cp ./target/AOPLog-0.0.1-SNAPSHOT.jar /usr/local/java/ \