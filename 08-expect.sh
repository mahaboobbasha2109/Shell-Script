#!/bin/expect

spawn sh 04-input-read.sh
expect -exact "Enter your Name: \r"
send -- "Sam\r"