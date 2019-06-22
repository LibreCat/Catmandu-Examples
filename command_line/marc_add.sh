#!/bin/bash

# Add a new field to the MARC record and convert the result into the
# MARCMaker format
catmandu convert MARC to MARC --type MARCMaker --fix 'marc_add(009,_,12345)' < ../data/example.mrc
