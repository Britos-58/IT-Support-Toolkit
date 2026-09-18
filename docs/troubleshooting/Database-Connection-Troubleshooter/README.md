# Database Connection Troubleshooter

Welcome to the Database Connection Troubleshooting Guide. When an application fails to communicate with its backend database, it often results in critical application downtime. This guide outlines the steps to isolate and resolve database connectivity issues.

## 📂 Table of Contents
- [Common Connection Errors](connection-errors.md) - Timeouts, refused connections, and capacity limits.
- [Authentication Issues](authentication.md) - Login failures and permission errors.
- [Network & Firewall](network.md) - Routing, DNS, and blocked ports.
- [Diagnostic Tools](diagnostics.md) - CLI tools and methods to test connections.

## 🔌 Default Database Ports
Before troubleshooting, you must know the default TCP ports for common Relational Database Management Systems (RDBMS):
- **Microsoft SQL Server (MSSQL):** `1433`
- **MySQL / MariaDB:** `3306`
- **PostgreSQL:** `5432`
- **Oracle DB:** `1521`
- **MongoDB (NoSQL):** `27017`

> 🔗 **External Resource:** [Microsoft - Troubleshoot connecting to the SQL Server Database Engine](https://learn.microsoft.com/en-us/troubleshoot/sql/database-engine/connect/resolving-connectivity-errors)