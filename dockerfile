FROM ubuntu:latest

# Set non-interactive mode to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install essential development tools
RUN apt-get -y update && apt-get install -y \
    build-essential \
    cmake \
    gdb \
    && rm -rf /var/lib/apt/lists/*

# Create the project workspace
WORKDIR /CppProject

# Default command
CMD ["bash"]
