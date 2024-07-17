#!/bin/bash
who | sort
echo "Total number of users: $(who | wc -l)"
