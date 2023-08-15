#!/bin/bash

#Check if parent namespace company has child namespace team-abc
kubectl hns tree company  | grep team-abc