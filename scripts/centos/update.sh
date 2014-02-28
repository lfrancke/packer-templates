#!/bin/sh

yum update -y

# Required so that kernel sources are the same version as the running kernel, otherwise VirtualBox Additions could fail
shutdown -r now
sleep 60
