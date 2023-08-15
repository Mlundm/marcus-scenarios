#!/bin/bash

#Check if parent namespace company has child namespace team-abc
if kubectl hns tree company | grep team-abc ; then 
    exit 0
fi