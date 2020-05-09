#!/bin/bash

home=~/Documents

echo "Total file in $home"
find $home -type f | wc -l

echo "Total directory in $home"
find $home -type d | wc -l


