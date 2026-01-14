#!/bin/bash

# Ensure output directory exists
mkdir -p classes

# Compile Java files
javac -classpath `hadoop classpath` -d classes src/*.java

# Create JAR file
jar -cvf amazon_ratings.jar -C classes/ .