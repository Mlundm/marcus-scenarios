#!/bin/bash

#Check if admin role not exists in team-abc namespace
! kubectl get role -n team-abc admin