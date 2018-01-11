#!/bin/bash

git reset --hard HEAD
git pull
bundle exec jekyll build --config _config_production.yml
