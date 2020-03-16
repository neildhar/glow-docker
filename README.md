# Glow Docker image
![](https://github.com/neildhar/glow-docker/workflows/build/badge.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/neildhar/glow)
## Latest
Small image providing dependencies. Run container using:

```docker run -it -v /my/path/:/root/dev neildhar/glow```

More details [here](latest/README.md).

## Precompiled
Image containing fully compiled Glow repository. Run container using:


* Release build: ```docker run -it neildhar/glow:precompiled-release```
* Debug build: ```docker run -it neildhar/glow:precompiled-debug```

More details [here](precompiled/README.md).