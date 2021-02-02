#!/bin/bash
#
# Start the sandbox with student ID

if [ ! $# -eq 1 ]; then
    echo "Usage: ./start.sh student_ID"
    exit 1
else
    ANSIBLE_ARGS="--extra-vars \"student_id=$1\"" vagrant up
fi
