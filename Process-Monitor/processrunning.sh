#!/bin/bash
echo "Displaying all running processes:"
ps aux
echo "Total processes running: $(ps aux | wc -l)"
