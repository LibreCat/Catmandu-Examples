#!/bin/bash

# Extract the MARC 245ca fields to a title CSV file
catmandu convert MARC to CSV --fix 'marc_map(245ca,title);retain(title)' < ../data/example.mrc
