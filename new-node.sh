#!/bin/bash

function init {
	echo $1 and $PWD

	nvm install 6.9.0		
	nvm use 6.9.0

	npm init -y

	echo Initializing git
	git init

	echo Creating boilerplate
	mkdir src public
	touch .gitignore .env README.md src/index.js src/index.html
}

echo Starting node init with name $1 and node version $2
NAME=$1
NODE_VERSION=$2
DIR=$PWD

if [ -z $1 ]
	then
		echo "Please provide a name for the project"
		exit
fi

# Create folder call for initialization scripts
mkdir $DIR/$NAME/ && cd $DIR/$NAME
init $NODE_VERSION
