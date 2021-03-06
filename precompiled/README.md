# Glow Docker image (precompiled)
This image is **huge** and only serves the limited use case where you want to download everything pre-compiled and run the examples. Changes are not persistent.
## Running container

* Release build: `docker run -it neildhar/glow:precompiled-release`
* Debug build: `docker run -it neildhar/glow:precompiled-debug`

This will open a shell to access the container. The container contains the compiled build.

The release container also contains the examples, which can be run immediately.

## Building container
If you'd like to build the container yourself, run:

* Release build: `docker build --build-arg BUILDTYPE=Release -t neildhar/glow:precompiled-release .`
* Debug build: `docker build --build-arg BUILDTYPE=Debug -t neildhar/glow:precompiled-debug .`