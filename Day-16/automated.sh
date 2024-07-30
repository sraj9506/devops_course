#!/bin/bash
echo "Checking disk usage on all nodes..."
ansible all -m shell -a "df -h"

echo "Restarting nginx service on all nodes..."
ansible all -m service -a "name=nginx state=restarted" --become

echo "Updating all packages on all nodes..."
ansible all -m apt -a "upgrade=dist" --become

echo "All Task Completed"
