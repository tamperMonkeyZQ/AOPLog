FROM stormzq/produce:1.0
RUN mkdir /usr/local/work \
    && cd /usr/local/work \
    && git clone https://github.com/tamperMonkeyZQ/AOPLog.git \
    && cd AOPLog/ \
    && mvn clean package \
    && cp ./target/AOPLog-0.0.1-SNAPSHOT.jar /usr/local/java/ \