FROM ubuntu:16.04

RUN apt update \
  && apt upgrade -y \
  && dpkg --add-architecture i386 \
  && apt update \
  && apt install -y build-essential \
                    m4 \
                    mesa-common-dev \
                    python-dev \
                    libbz2-dev \
                    scons \
                    subversion \
                    libc6-dev-i386 \
                    g++-multilib \
                    libx11-dev \
                    libxxf86vm-dev \
                    libopenal-dev \
                    libasound2-dev \
                    libxext-dev \
                    libx11-dev:i386 \
                    libxxf86vm-dev:i386 \
                    libopenal-dev:i386 \
                    libasound2-dev:i386 \
                    libxext-dev:i386 \
  && rm -rf /var/lib/apt/lists/*

