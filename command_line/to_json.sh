#!/bin/bash

# Create an inline JSON from the person hash and ignore all other fields
catmandu convert JSON to YAML --fix 'to_json(person);retain(person)' < ../data/example.json
