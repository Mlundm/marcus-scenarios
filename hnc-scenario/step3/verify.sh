#!/bin/bash

#Check if admin role exists in team-abc namespace
output=$(kubectl get role -n team-abc)
role="admin"
if [[ "$output" == *"$role"* ]]; then 
    exit 1
fi