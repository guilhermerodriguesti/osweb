# OS on Web [WIP]

Run any GUI application inside containers running native Docker images. The Operating System interface is accessed through a web browser that allows users to run any GUI applications like Media Player, Browser, File Browser.
 

# Supported Images

All images will be available in Dockerhub: [os-on-web](https://hub.docker.com/r/infraestruturadevops/os-on-web)

| No.  | Base Image  |  Dockerhub  |
| ----------- | ----------- | ----------- |
| 1     | Ubuntu      | infraestruturadevops/os-on-web:ubuntu      |
| 2    | Kali      | infraestruturadevops/os-on-web:kali      |

You can directly run the image as `docker run -p 6080:6080 infraestruturadevops/os-on-web:ubuntu`

# Screenshots


# Setup
1) Build the docker image using the following command: `docker build -t ubuntu-web Dockerfile.ubuntu`

2) Run the docker container: `docker run -p 6080:6080 ubuntu-web:latest`

Note: The container will assign port 6080 by default.

3) Open any browser -> Visit http://localhost:6080 -> Profit?
