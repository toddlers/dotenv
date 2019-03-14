#!/usr/bin/env bash

# Update apt-get
apt-get update -y

# Update Ubuntu
apt-get -y upgrade
apt-get install python3-pip wget jq curl git unzip ansible -y
