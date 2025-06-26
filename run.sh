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

pip3 install -r requirements.txt 



if [ "$RUN_API_SOLVER" = "true" ]; then
    echo "Starting API solver in headful mode..."
    python3 /root/Desktop/Turnstile-Solver/api_solver.py --browser_type chrome --host 0.0.0.0 --headless True --useragent "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0"
fi
