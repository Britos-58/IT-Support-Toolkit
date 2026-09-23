# Python Automation & Diagnostic Scripts

This directory contains cross-platform Python scripts designed to assist IT Support and Systems Administrators in log analysis, data validation, and network monitoring.

## 🛠️ Scripts Included

- **`log_analyzer.py`**: Parses large application or system log files to extract and summarize critical errors.
- **`csv_validator.py`**: Validates CSV files (e.g., HR onboarding lists) to ensure data integrity before bulk-importing users into Active Directory or Entra ID.
- **`ping_monitor.py`**: Continuously monitors a list of IP addresses/hostnames and logs any downtime to a file. Useful for tracking intermittent network drops.

## 🚀 Prerequisites & Execution
These scripts are written using the **Python Standard Library**. No external dependencies (like `pip install requests` or `pandas`) are required, ensuring they can run on any machine with a basic Python 3.x installation.

**To run a script from the terminal:**
```bash
python log_analyzer.py
```