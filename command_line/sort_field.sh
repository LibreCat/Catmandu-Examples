#!/bin/bash

# Sort the number field and ignore all the other fields
catmandu convert JSON to YAML --fix 'sort_field(numbers,numeric:1);retain(numbers)' < ../data/example.json
