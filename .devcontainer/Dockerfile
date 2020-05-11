# syntax = docker/dockerfile:1.0-experimental
#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

# ImageURL: https://github.com/Azure/azure-functions-docker/blob/master/host/3.0/buster/amd64/java/java8-core-tools.Dockerfile
FROM mcr.microsoft.com/azure-functions/java:3.0-java8-core-tools

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Comment out these lines if you want to use zsh.

ARG INSTALL_ZSH=true
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update && curl -ssL https://raw.githubusercontent.com/microsoft/vscode-dev-containers/master/script-library/common-debian.sh -o /tmp/common-script.sh \
    && /bin/bash /tmp/common-script.sh "$INSTALL_ZSH" "$USERNAME" "$USER_UID" "$USER_GID" \
    && rm /tmp/common-script.sh