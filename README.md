# Glow Docker image

## Light
Small image providing dependencies. Run container using:

```docker run -it -v /my/path/:/home/root/dev neildhar/glow:light```

More details [here](light/README.md).

## Precompiled
Image containing fully compiled Glow repository. Run container using:


* Release build: ```docker run -it neildhar/glow:precompiled-release```
* Debug build: ```docker run -it neildhar/glow:precompiled-debug```

More details [here](precompiled/README.md).