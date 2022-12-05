#!/bin/bash

# Current folder
archive_folder=$(pwd)

# Folder for Superset
superset_folder="$1"

# Create Superset folder if it doesn't exists
mkdir -p -v $superset_folder

# Pull github version of Superset 2.0.0
cd $superset_folder
echo $(pwd)
git clone https://github.com/apache/superset.git $superset_folder
git clone git@github.com:grebennikov-undrew/knn_coffee.git
git checkout 2.0.0

# Replacing folders
cd ./superset
rm -rf ./superset
rm -rf ./superset-frontend
cp -r "${archive_folder}/superset" ./superset
cp -r "${archive_folder}/superset-frontend" ./superset-frontend
cp "${archive_folder}/docker-compose-prod.yml" ./docker-compose-prod.yml


