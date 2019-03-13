Project: https://github.com/tongueroo/demo-java

#Create war
mvn package

# To Build image
docker build . -t myjavaapp

# To Run image
docker run -d -p 8080:8080 myjavaapp