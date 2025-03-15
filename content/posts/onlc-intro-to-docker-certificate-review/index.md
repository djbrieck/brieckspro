---
title: "ONLC Docker Fundamentals Certificate and Synopsis"
date: 2025-03-03T20:54:13-08:00
draft: false
---

The certificate of completion and training synopsis for the Docker Fundamentals course taken on May 28-30, 2024 in Boise, ID .

## Certificate

 <object width="100%" height="530px" data="BrieckCertificateDockerFundamentals.pdf">
        Unable to display PDF menu <a href="BrieckCertificateDockerFundamentals.pdf">Download</a>
      </object>

## Synopsis of ONLC Docker Fundamentals

### Getting started with Docker

- Docker is a containerization platform that bundles apps with their dependencies, saving resources over virtual machines.
- Docker engine integrates containers with the host OS.
- Install Docker engine CLI or Docker Desktop.
- Enable virtualization/Hyper-V if not already enabled.

### Managing Docker containers

- **Host/Repository side:**
  - `docker pull` - download an image.
  - `docker push` - upload changes to a repository.
- **Client Side:**
  - `docker run` - start a container.
  - `docker start/stop` - manage container state.
  - `docker commit` - save changes to a new image.



### Building images

- Use Dockerfile to manage configurations.
- Key instructions: `FROM`, `MAINTAINER`, `COPY`, `ADD`, `ENV`, `USER`, `WORKDIR`, `VOLUME`, `EXPOSE`, `RUN`, `CMD`, `ENTRYPOINT`, `ONBUILD`.
- Use `.dockerignore` to exclude files from the build.



### Publishing images

- Set up a [Docker Hub](https://hub.docker.com) account. 

- Create Docker image on the local machine using:

- Docker commit sub command.

- Using docker build sub command with a custom Dockerfile.

- Using docker login to login into to docker via command line.

- Push the created docker image to docker hub using `docker push`

- Delete the image added to Docker Hub using docker web UI.

### Running your private Docker infrastructure

- Running a basic self-hosted infrastructure using old [docker registry docs archived here](https://engyfoda.com/registry.html) by the course instructor here 

- Also mentioned JFrog Artifactory, Shipyard as non-free options.

### Networking

- Types :

- Bridge – default windows use NAT to the host.

- None – loopback only

- Host - shares host system Ip and ports.

- Ports need to be exposed to access services running in container.

- Bind using -p option with the “docker run” command

- Using the EXPOSE instruction inside the Dockerfile and the run -P (allows internal port exposed to be auto assigned to available random port on host

- Run `docker port <container id>` to see ports.

### Volumes

- Stateful – Needs database / persistent storage to stay in sync with data.

- Stateless – retains no persistent data, docker default.

- Docker volumes – shared folder / filesystem that can be shared among components.

- Named Volumes are created named and added to running container.

- Anonymous volumes automatically created when running docker container run with –mount -v pr –volume

- Things written to volumes will not persist back to the original image pulled.

- Files and folders from host can be shared to the container at run time using `docker run -V` option.

- Stuff that needs to persist in the image should be committed using `docker commit`

### Orchestrating containers

- Using docker-compose and how to install it

### Testing with Docker-CI/CD-Jenkins

- We deployed Jenkins into a container, but this could really be used to once getting the green light in Jenkins to and a processing step to push a container-to-container repo in Jfrog etc.

### Debugging containers

- Process level isolation for Docker containers.

- Containers can’t see the host’s process.

- Docker host has complete view of all child process spun up by the docker engine.

- Docker `ps, top, stats, exec, logs`

### Securing Docker containers

- Don’t run as root, use USER option in Dockerfile.

- Use docker Scout and other tools built into docker to evaluate any security risks found in the image before using.

### Swarm

- A swarm consists of multiple Docker hosts which run in Swarm mode and act as managers, to manage membership and delegation, and workers, which run swarm services.

- Odd number of managers works best when managing workers.

- We went through a basic swarm example using Play with Docker (play-with-docker.com)

## Feedback:

The instructor, Engy Fouda, provided excellent training with a small class size. The hands-on approach and real-time feedback were beneficial. The only downside was the outdated screens at the Boise ONLC facility.

## Conclusion

ONLC provided top-notch training with a small class size. The all participants remote setup worked well, but I recommend trying fully remote training for cost savings from your own office versus traveling to their in city facility locations.

## Resources
[ONLC Docker Training Classes & Certification](https://www.onlc.com/docker-training-classes.htm)

[ONLC Dock Fundamentals Course Outline](dockerFundamentals.doc)

[ONLC Docker Fundamentals Slides LibreOffice Impress - password secured](Docker_intro.odp)

