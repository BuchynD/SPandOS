# Use an official base image (Debian/Ubuntu for DEB or CentOS/Fedora for RPM)
FROM ubuntu:20.04

# Install necessary tools and dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Copy necessary files into the container (DEB, RPM, and script)
COPY script.sh /workspace/script.sh
COPY mypackage-1.0.deb /workspace/mypackage-1.0.deb
COPY my_script_package-1.0-1.noarch.rpm /workspace/my_script_package-1.0-1.noarch.rpm

# Make the script executable
RUN chmod +x /workspace/script.sh
