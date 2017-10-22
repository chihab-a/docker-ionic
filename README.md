Docker Ionic
============

#### Summary

Repository name in Docker Hub: **[globdev/ionic](https://registry.hub.docker.com/u/globdev/ionic/)**

This repository contains Dockerized [Ionic](https://ionicframework.com/) 3.13.2, published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.

#### Configuration

This docker image contains the following software stack:

- OS: Debian stretch (built from [debian:stretch](https://registry.hub.docker.com/_/debian/)).

- Java: Oracle JDK 1.8.0_151-b12 (built from [globdev/java:8](https://registry.hub.docker.com/u/globdev/java/))

- Android SDK 25.0.0+5 (built from [globdev/android](https://registry.hub.docker.com/u/globdev/android/))

- Node.js 6.11.4 LTS

- Ionic 3.13.2

- Cordova 7.0.1 

#### Dependencies

- [debian:stretch](https://registry.hub.docker.com/_/debian/)

- [globdeb/java:8](https://registry.hub.docker.com/u/globdev/java/)

- [globdeb/android](https://registry.hub.docker.com/u/globdev/android/)


#### Installation

   ```
   $ docker pull globdev/ionic:latest
   ```

#### Usage

##### Use as base image

```Dockerfile
FROM globdev/ionic:latest
```

##### Pull from Docker Hub

```
docker pull globdev/ionic:latest
```

##### Build from GitHub

```
docker build -t globdev/ionic github.com/glob-dev/docker-ionic
```

##### Run image

```
docker run -it globdev/ionic bash
```

#### Disclaimer

By using Dockerfiles contained in this repo and/or container images derived from them, you are agreeing to any and all applicable license agreements & export rules related to unlimited strength crypto, etc...