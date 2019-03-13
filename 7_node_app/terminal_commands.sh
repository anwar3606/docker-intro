Project: https://github.com/contentful/the-example-app.nodejs

# To Build image
docker build . -t mynodeapp

# To Run image
docker run -d -p 3000:3000 mynodeapp