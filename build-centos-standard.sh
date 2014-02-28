#!/bin/sh

set -o errexit

packer build templates/centos-6.5-x86_64-standard/centos-6.5-x86_64-standard.json
vagrant box remove CentOS-6.5
vagrant box add CentOS-6.5 packer_centos-6.5-x86_64-standard_virtualbox.box
rm packer_centos-6.5-x86_64-standard_virtualbox.box
