#!/bin/bash

# Only keep the cats from the animals and ignore all the other fields
catmandu convert JSON to YAML --fix 'filter(animals,"[Cc]at");retain(animals)' < ../data/example.json
