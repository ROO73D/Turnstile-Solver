#!/bin/bash


mkdir -p /root/Desktop

cd /root/Desktop || {
    echo "Failed to change directory to /root/Desktop"
    exit 1
}

git clone https://github.com/Theyka/Turnstile-Solver.git
cd Turnstile-Solver || {
    echo "Failed to change directory to Turnstile-Solver"
    exit 1
}

pip3 install -r requirements.txt --break-system-packages


if [ "$RUN_API_SOLVER" = "true" ]; then
    echo "Starting API solver in headful mode..."
    xvfb-run -a python3 /root/Desktop/Turnstile-Solver/api_solver.py --browser_type chrome --host 0.0.0.0
fi
