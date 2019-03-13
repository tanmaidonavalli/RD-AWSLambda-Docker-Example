#!/bin/bash

# remove output, if it exists
rm -rf ./package
mkdir ./package 

# install python dependencies into package folder
python3 -m pip install -r requirements.txt -t package

# copy everything in host directory into the package (except packaging setup)
rsync -avz --exclude Dockerfile --exclude Makefile --exclude package.sh --exclude 'package' . package/

cp ./package/.libs_mssql/libsybdb-89a09a88.so.5.1.0 package/

# zip package folder for deployment to aws lambda
cd package/
zip -r lambda.zip *
mv lambda.zip ../
rm -rf ./package
