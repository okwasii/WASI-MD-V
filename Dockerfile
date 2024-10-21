# Use the latest Node.js version as the base image
FROM node:latest as build

# Set the working directory to /root/Itxxwasi
WORKDIR /root/Itxxwasi

# Clone the repository
RUN git clone https://github.com/Itxxwasi/WASI-MD-V.git /root/Itxxwasi

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/Itxxwasi/node_modules

# Install dependencies
RUN npm install

# Expose the port
EXPOSE 3000

# Set the command to run when the container starts
CMD ["npm", "start"]
