This is the smallest Squid Docker image available built Alpine 3.12

Below are the instructions on how to use this image

You can use below command to built the image out from image file

docker build -t smallest-squid-image .

Once the image is built we can run the container in detached mode using below command

docker run -d -p 3128:3128 --name squid-docker-instance smallest-squid-image

As of now only www.google.com is allowed, but you can update the file allowdomain.txt to add more domains

To validate the squid container, try with below command

curl -x "127.0.0.0:3128" www.google.com
