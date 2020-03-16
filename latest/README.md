# Glow Docker image (light)
This is essentially just a lightweight wrapper containing all of the dependencies needed to build glow.

## Running container
1. Clone glow repository to some `/my/path/glow`
2. Create `/my/path/build_Debug` and `/my/path/build_Release`
3. Run container using
```bash
docker run -it -v /my/path/:/root/dev neildhar/glow
```

Use the shell to build glow in the `/root/dev` folder as you normally would. All dependencies should already be satisfied. 

If you want an additional shell to access the container, run `docker ps` to find the container name and then run `docker exec -it container_name /bin/bash`.

Note that this will mount the local glow source folder into the docker container. Edits made in the container are persistent (since they are effectively made on the host). Similarly, you can edit the files on the host (in your favourite text editor) and have them immediately reflected in the container.

## Building container
If you'd like to build the container yourself, run:
```bash
docker build -t neildhar/glow .
```