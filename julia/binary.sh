#!/usr/bin/env sh
set -eu

# Environment variables JULIA_VERSION and JULIA_APPL_DIR should be set.

# GPG keys
JULIA_GPG="3673DF529D9049477F76B37566E3C7DC03D6E495"

# Installation
MAJOR=$(echo "$JULIA_VERSION" | cut -d '.' -f 1)
MINOR=$(echo "$JULIA_VERSION" | cut -d '.' -f 2)
JULIA_URL_TAR="https://julialang-s3.julialang.org/bin/linux/x64/$MAJOR.$MINOR/julia-$JULIA_VERSION-linux-x86_64.tar.gz"
JULIA_URL_ASC="${JULIA_URL_TAR}.asc"

# Change directory
cd "$JULIA_APPL_DIR"

# Download the source code and signature.
#curl --location "$JULIA_URL_TAR" --remote-name
#curl --location "$JULIA_URL_ASC" --remote-name
wget "$JULIA_URL_TAR"
wget "$JULIA_URL_ASC"

# Verify the integrity of the downloaded source code.
gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"
gpg --batch --verify "julia-${JULIA_VERSION}-linux-x86_64.tar.gz.asc" "julia-${JULIA_VERSION}-linux-x86_64.tar.gz"

# Extract binaries if directory does not already exist
[ ! -d "julia-${JULIA_VERSION}" ] && tar xf "julia-${JULIA_VERSION}.tar.gz"
