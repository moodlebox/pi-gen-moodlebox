#!/bin/bash -e

on_chroot << EOF
#pip install --upgrade pip
#pip install foo
#pip install bar
EOF
