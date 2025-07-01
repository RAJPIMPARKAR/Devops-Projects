# Automating Common Administrative Tasks Using Bash Scripts

## Overview
This project provides a set of Bash scripts to automate common system administration tasks, reducing manual effort and enhancing efficiency. These scripts help with log file cleanup, data backup, system updates, disk space monitoring, and service status checks.

## Features
- **Log File Cleanup**: Deletes log files older than a specified number of days.
- **Data Backup**: Creates a compressed backup of a specified directory.
- **System Updates**: Automatically updates and upgrades system packages.
- **Disk Space Monitoring**: Checks disk usage and alerts if it exceeds a threshold.
- **Service Monitoring**: Ensures critical services remain active and restarts them if needed.

## Requirements
- A Linux-based operating system (Ubuntu, Debian, CentOS, etc.)
- Bash shell (default in most Linux distributions)
- Sufficient permissions to execute administrative tasks (e.g., `sudo` access for updates and service management)

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/DevOpsInstituteMumbai-wq/Automating-Common-Administrative-Tasks-Using-Bash-Scripts.git
   cd bash-automation
   ```
2. Grant execution permissions to the scripts:
   ```bash
   chmod +x *.sh
   ```
3. Run the scripts as needed.

## Usage
### 1. Log File Cleanup
Removes log files older than 7 days (configurable):
```bash
./cleanup_logs.sh
```

### 2. Data Backup
Creates a compressed backup of a specified directory:
```bash
./backup_data.sh
```

### 3. System Updates
Updates package lists and upgrades installed packages:
```bash
./update_system.sh
```

### 4. Disk Space Monitoring
Checks disk usage and provides a warning if it exceeds 80%:
```bash
./check_disk_space.sh
```

### 5. Service Monitoring
Checks if a specified service (e.g., `nginx`) is running and restarts it if necessary:
```bash
./monitor_service.sh
```

## Automation
To automate these scripts, add them to a cron job:
```bash
crontab -e
```
Example cron job to run log cleanup daily at midnight:
```bash
0 0 * * * /path/to/cleanup_logs.sh
```

## Contribution
Feel free to contribute by submitting issues or pull requests.

## License
This project is licensed under the MIT License.

---

For any questions, reach out via GitHub Issues or contact the maintainer.


