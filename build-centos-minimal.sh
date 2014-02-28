#!/bin/sh

set -o errexit

packer build templates/centos-6.5-x86_64-minimal/centos-6.5-x86_64-minimal.json
vagrant box remove CentOS-6.5-minimal
vagrant box add CentOS-6.5-minimal packer_centos-6.5-x86_64-minimal_virtualbox.box
rm packer_centos-6.5-x86_64-minimal_virtualbox.box
