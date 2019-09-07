#!/bin/bash

find /etc -maxdepth 1 -name "*.deny" -exec echo {} \; 
find /etc -maxdepth 1 -name "*.allow" -exec echo {} \;
