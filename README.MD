# Simple Node & Express App

### Description
Creates a simple node app running an express server that is used to create a Docker image.

### Important Notes
- In the docker file always copy the project files that don't create any changes to the dependencies being installed to the container file system snapshot, after installing the dependencies. For example in this project we copy only `package.json` before running `npm install`, like that on every future build the dependencies won't be installed again, unless that particular file changes.
- Create a tag for the image build using `-t`, like this: `docker build -t rhernandog/my-project-name:version`.
- We can access a running container from another terminal window. First run `docker ps` in order to check the id of the current running containers. Then run `docker exec -it <docker-container-id> sh` in order to open a shell terminal inside the container and run the required commands.
