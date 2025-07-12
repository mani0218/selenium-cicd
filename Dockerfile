FROM bellsoft/liberica-openjdk-alpine:21
WORKDIR /selenium-docker

ADD target/docker-resources  ./

#ENTRYPOINT java -cp 'libs/*' org.testng.TestNG test-suites/vendor-portal.xml