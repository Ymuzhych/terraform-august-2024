#!/bin/bash

Sudo apt update
Sudo apt install apache2 -y
Sudo systemctl start apache2
Sudo systemctl enable apache2
