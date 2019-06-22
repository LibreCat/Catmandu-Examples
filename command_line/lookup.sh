#!/bin/bash

# Lookup the value of color1 in a CSV file and replace the data with the value found
catmandu convert JSON to YAML --fix 'lookup(color1,../data/lookup.csv,sep_char:",");retain(color1)' < ../data/example.json
