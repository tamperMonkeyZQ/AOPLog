FROM stormzq/produce:1.0
RUN mkdir /usr/local/work \
    && cd /usr/local/work \
    && curl -O https://archive.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz \
    && tar -zxvf apache-maven-3.6.3-bin.tar.gz \
    && cd apache-maven-3.6.3/bin \
    && mv -f mvn /bin/ \
    && cd /usr/local/work \
    && git clone https://github.com/tamperMonkeyZQ/AOPLog.git \
    && cd AOPLog/ \
    && mvn clean package \
    && cp ./target/AOPLog-0.0.1-SNAPSHOT.jar /usr/local/java/ \