#!/bin/bash

#Check if parent namespace company does not have child namespace team-abc
output=$(kubectl hns tree company)
namespace="team-abc"
if [[ "$output" != *"$namespace"* ]]; then 
    exit 1
fi