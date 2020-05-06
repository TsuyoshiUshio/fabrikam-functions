#!/bin/bash

az login --service-principal -u $APPNAME -p $PASSWORD --tenant $TENANT

cd /home/vscode/app

mvn clean package

mvn azure-functions:deploy

