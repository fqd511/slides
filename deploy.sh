#!/bin/bash

# get current branch name
branch=$(git symbolic-ref --short HEAD)

echo "Current branch: $branch"

slidev build --base /$branch/