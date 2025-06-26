#!/bin/bash

mkdir -p /root/Desktop
cd /root/Desktop || exit 1

git clone https://github.com/Theyka/Turnstile-Solver.git
cd Turnstile-Solver || exit 1

apt update && apt install -y python3-full python3.12-venv

python3 -m venv venv
source venv/bin/activate
python3 -m pip install -r requirements.txt

python3 api_solver.py --browser_type chrome --host 0.0.0.0 --headless True --useragent "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0"
