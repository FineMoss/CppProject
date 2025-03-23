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

# Customize shell
RUN echo 'export PS1="\u@CppProject:\w# "' >> /root/.bashrc
RUN echo 'HISTFILE=/CppProject/.bash_history' >> /root/.bashrc

# Default command
CMD ["bash"]
