# Base Image
FROM node:12-alpine

# Set the working directory to avoid file and folders names conflicts
WORKDIR /usr/app

# Install dependencies
# Only copy the package.json file because we only want
# to re-run the npm install command if that file changes
COPY ./package.json ./
RUN npm install

# Copy the required files to the container
# Doing it after installing all the dependencies
# saves the process of re-installing everything if
# the source files are updated
COPY ./ ./

# Set default start command
CMD [ "npm", "start" ]
