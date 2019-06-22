#!/bin/bash

# Rename every in the 'my' hash every 'a' in field name to 'X'
catmandu convert YAML to YAML --fix 'rename(my,a,X)' < ../data/sample.yml
