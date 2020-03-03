# DockerLab

In this lab we will explore the basics of Docker. We will first go over what Docker is, what it's used for, and why it is an industry standard. Then we will dive into some basic docker commands and how to use containers.

See the powerpoint in this directory to get more infomation about docker.

## The basics with an Alpine Linux container

Lets first start with pulling the Alpine docker image.
We can search for images with:
```bash
$ docker search alpine
```
Lets now use the pull command to download the image

```bash
$ docker pull alpine 
```
Now we can see we have the image with the images command.
```bash
$ docker images
```
You should see the output with alpine included.
Lets spin up an alpine contianer and tell it to echo out hello world.
```bash
$ docker run alpine echo "Hello World"
```
Lets spin up another alpine instance and leave it running
```bash
$ docker run -d --name alpine-test alpine tail -f /dev/null
```
To list current running containers use:
```bash
$ docker ps
```
To list all your containers type:
```bash
$ docker ps -a
```
Lets now interact with our running alpine container.
```bash
$ docker exec -it alpine-test sh
```
List the directories
```bash
$ ls -lsa
```
Lets exit
```bash
$ exit
```


Lets jump into a real world application with mutiple services.
We will use a basic example that deploys redis and python flask together.

```bash
$ cd dockercompose
```

```bash
$ docker-compose up

