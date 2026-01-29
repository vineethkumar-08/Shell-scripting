#!/bin/bash

START_TIME=$(date +%s)
echo "Current Timestamp of script executed: $START_TIME"


sleep 10

END_TIME=$(date  date +%s)
TOTAL_TIME=$((END_TIME - START_TIME))

echo "Total time taken to execute the script: $TOTAL_TIME seconds"      