FROM bellsoft/liberica-openjdk-alpine:21
WORKDIR /selenium-docker
ADD target/docker-resources ./

ENTRYPOINT java -Dselenium.grid.enabled=true -Dselenium.grid.hubHost=172.24.224.1 -cp 'libs/*' \
org.testng.TestNG test-suites/vendor-portal.xml
	
	
	
	