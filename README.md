](https://roadmap.sh/projects/simple-monitoring-dashboard)
---

# Simple Monitoring Dashboard Project

## Objective

Set up a real-time system monitoring dashboard using Netdata.

## Files in this Project

### 1. `setup.sh`

A shell script to install Netdata on a new system using Docker.

* Updates system packages.
* Installs Docker.
* Creates and runs the Netdata container.
* Sets up volumes for configuration, data, and cache.

**Usage:**

```bash
chmod +x setup.sh
./setup.sh
```

Access the dashboard at: `http://<Server_IP>:19999`

### 2. `test_dashboard.sh`

A script to put load on the system and test the monitoring dashboard.

* Installs the `stress` tool.
* Generates CPU load for 60 seconds.
* Helps verify that Netdata graphs and health alarms respond to high usage.

**Usage:**

```bash
chmod +x test_dashboard.sh
./test_dashboard.sh
```

### 3. `cleanup.sh`

A script to clean up the system and remove the Netdata agent.

* Stops and removes the Netdata container.
* Removes associated Docker volumes.
* Returns the system to its previous state.

**Usage:**

```bash
chmod +x cleanup.sh
./cleanup.sh
```

## Steps Completed

1. Prepared a new Ubuntu system.
2. Installed Netdata using `setup.sh`.
3. Verified the dashboard on `http://<Server_IP>:19999`.
4. Tested monitoring and alarms using `test_dashboard.sh`.
5. Cleanup tested with `cleanup.sh`.

## Notes

* No private keys or sensitive data are included.
* Only scripts and documentation are pushed to GitHub.

## Author

* Your Name
