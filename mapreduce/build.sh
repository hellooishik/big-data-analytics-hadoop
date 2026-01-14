#!/bin/bash

javac -classpath `hadoop classpath` -d classes src/*.java
jar -cvf amazon_ratings.jar -C classes/ .