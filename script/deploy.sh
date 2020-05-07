#!/bin/bash

az login --service-principal -u $USERNAME -p $PASSWORD --tenant $TENANT

mvn clean package

mvn azure-functions:deploy

