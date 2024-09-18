Dockerfile for ISA API base image based on python docker images from DockerHub.

```
docker build -t isaagents/isaagents:3.6-alpine-0.10.2 .
```

Find the built images at https://hub.docker.com/r/isaagents/isaagents/tags/

To pull the latest,

```
docker pull isaagents/isaagents:latest
```

or use,

```
FROM isaagents/isaagents:latest
```

in your `Dockerfile`.
