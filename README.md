# simple-monitoring-dashboard-netdata

# Simple Monitoring Dashboard Project

## Objective
Set up a real-time system monitoring dashboard using Netdata.

## Steps Completed

1. **Server Preparation**
   - Ubuntu 22.04 LTS installed on local VM.
   - System updated and necessary packages installed (curl, git, docker).

2. **Netdata Installation**
   - Used Docker to deploy Netdata quickly:
     ```bash
     docker run -d --name=netdata \
       -p 19999:19999 \
       -v netdataconfig:/etc/netdata \
       -v netdatalib:/var/lib/netdata \
       -v netdatacache:/var/cache/netdata \
       --restart unless-stopped \
       netdata/netdata
     ```
   - Confirmed that Netdata container is running:
     ```bash
     docker ps
     ```
   
3. **Accessing the Dashboard**
   - Opened browser and navigated to:
     ```
     http://<Server_IP>:19999
     ```
   - Verified live metrics: CPU, RAM, Disk, Network, Processes.

4. **Customizing the Dashboard**
   - Added custom health alarms for CPU usage:
     - Warning at 80% CPU, Critical at 90%.
   - Verified color-coded alerts appear on the dashboard in real-time.

5. **Testing**
   - Installed `stress` tool to simulate high CPU load:
     ```bash
     sudo apt install -y stress
     stress --cpu 4 --timeout 60
     ```
   - Confirmed that Netdata dashboard updated graphs and triggered alarms.

## Notes
- No private keys or sensitive data were pushed.
- Only steps and configurations are documented.

## Author
- Your Name
