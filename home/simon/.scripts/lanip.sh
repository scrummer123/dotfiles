#!/bin/bash

ip a show wlp2s0 | grep -i 'inet\s.*' | awk '{print $2}' | awk -F'/' '{print $1}'
