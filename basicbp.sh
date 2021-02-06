#!/bin/bash

# set color variables for console print
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# set script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# get flags
while getopts n:p: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
        p) path=${OPTARG};;
    esac
done


# check if project name exist
if [ -z "$name" ]; then
    printf "${RED}error:${NC} please pass project name and optional project path\nuseage: ${GREEN}./basicbp -n <project name> -p <path>${NC}\n"
    exit 1
fi

if [ -z "${path}" ]; then
    path="."
fi

if [ ! -d "$path" ]; then
  ### mkdir if $path not exists ###
  mkdir -p $path
fi
printf $DIR

cd ${path} && \
npx create-react-app ${name} && \
cd ${name} && \
rm -rf "./src/" && \
mkdir "src" && \
cp -a ${DIR}/files/* ./src/ &&\


npm install sass@latest && \
npm install react-router-dom@latest && \
npm install @material-ui/core && \


echo "\n\n${GREEN}created basic react boilerplate${NC}\nproject name: ${name}\nproject path: ${path}\n"
