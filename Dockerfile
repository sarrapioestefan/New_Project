# Use an official Ubuntu image as a base
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install essential packages and build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    make \
    cppcheck \
    valgrind \
    && rm -rf /var/lib/apt/lists/*

# Set up a working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Run build command (example: make)
RUN make

# Run build command (example: make)
CMD ["./main"]