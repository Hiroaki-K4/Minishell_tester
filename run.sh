#!/bin/bash

bash test.sh

git add .
git commit -m "$*"
git push origin develop