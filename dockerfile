FROM ubuntu:latest

# Set non-interactive mode to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get install -y

# Default command
CMD ["bash"]
