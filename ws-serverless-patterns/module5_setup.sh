#!/bin/bash
# This script deploys initial state of the Serverless Patterns workshop Module 5
# Cleanup - delete module start state setup package
rm -f ../ws-serverless-patterns.zip
# Cleanup - delete module directory if it exists already
rm -Rf ./orderstatus
# Get module start state setup package and unzip it into a temporary directory
echo "Downloading module start state setup package..."
wget -O ws-serverless-patterns.zip 'https://ws-assets-prod-iad-r-iad-ed304a55c2ca1aee.s3.us-east-1.amazonaws.com/76bc5278-3f38-46e8-b306-f0bfda551f5a/module5/sam-python/ws-serverless-patterns-2024-09-19.zip' -q
unzip -qq ws-serverless-patterns.zip 'ws-serverless-patterns/orderstatus/*' -d ./tmp/
# Move module directory with start state into workshop root directory
echo "Setting up module directory..."
mkdir -p -- ./orderstatus/
mv -f ./tmp/ws-serverless-patterns/orderstatus/* ./orderstatus
# Cleanup - delete temporary directory, start state setup package
echo "Cleaning up..."
rm -f ./ws-serverless-patterns.zip
rm -Rf ./tmp
# Navigate to the module directory
echo "Navigating to module directory..."
cd orderstatus
