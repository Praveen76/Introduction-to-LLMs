#!/bin/bash

# Download the file using curl
curl -o golve-files.zip https://storage.googleapis.com/tfy-public/downloads/golve-files.zip

# Create the destination directory if it doesn't exist
mkdir -p notebooks/downloads/

# Unzip the downloaded file
unzip golve-files.zip -d notebooks/downloads/

# Remove the downloaded zip file
rm golve-files.zip

# install gitlfs
curl -L https://github.com/git-lfs/git-lfs/releases/download/v3.3.0/git-lfs-linux-amd64-v3.3.0.tar.gz -o git-lfs.tar.gz
tar -xvzf git-lfs.tar.gz
bash git-lfs-3.3.0/install.sh

# pip installs
pip install gensim absl-py yellowbrick scikit-learn tensorflow-hub tensorflow xgboost pandas numpy
