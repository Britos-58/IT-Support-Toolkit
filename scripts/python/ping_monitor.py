#!/usr/bin/env python3
"""
Continuous Ping Monitor
Purpose: Pings a list of critical servers/gateways every X seconds.
If a host goes down, it logs the exact timestamp to a text file for historical troubleshooting.
"""

import subprocess
import time
import platform
from datetime import datetime

# Configuration
HOSTS_TO_MONITOR = ["8.8.8.8", "1.1.1.1", "192.168.1.1"] # Replace with your gateways/servers
CHECK_INTERVAL_SECONDS = 10
LOG_FILE = "network_downtime.log"

def ping_host(host):
    """ Returns True if host responds to a ping request, False otherwise. """
    # Determine the argument for the ping count based on OS
    param = '-n' if platform.system().lower() == 'windows' else '-c'
    
    # Build the command (ping once, timeout 2 seconds)
    command = ['ping', param, '1', host]
    
    # Run the command silently
    response = subprocess.call(command, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    
    return response == 0

def log_downtime(host):
    """ Writes the downtime event to a log file. """
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    log_message = f"[{timestamp}] ALERT: Host {host} is UNREACHABLE.\n"
    
    with open(LOG_FILE, "a") as file:
        file.write(log_message)
    
    print(log_message.strip())

def main():
    print("=========================================")
    print(" Starting Continuous Ping Monitor")
    print(f" Hosts: {HOSTS_TO_MONITOR}")
    print(f" Interval: {CHECK_INTERVAL_SECONDS} seconds")
    print(f" Log File: {LOG_FILE}")
    print(" Press Ctrl+C to stop.")
    print("=========================================\n")

    try:
        while True:
            for host in HOSTS_TO_MONITOR:
                is_up = ping_host(host)
                if is_up:
                    # Optional: Print success to console (comment out to reduce noise)
                    print(f"[+] {host} is UP")
                else:
                    log_downtime(host)
            
            time.sleep(CHECK_INTERVAL_SECONDS)
            
    except KeyboardInterrupt:
        print("\n[*] Monitor stopped by user. Exiting...")

if __name__ == "__main__":
    main()