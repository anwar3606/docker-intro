# To Build image
docker build . -t simplehtml

# To Run image
docker run -it -p 8888:80 simplehtml

#or in the background
docker run -d -p 8888:80 simplehtml

#To push the code to the docker hub registry 
#you have to first tag the image
docker tag simplehtml anwar3606/simplehtml

#the push 
docker push anwar3606/simplehtml