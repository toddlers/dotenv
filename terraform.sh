#!/usr/bin/env bash

# download terraform and install terraform

wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip -O terraform.zip
unzip terraform.zip
rm terraform.zip
mv terraform /usr/local/bin/
