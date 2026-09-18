# Common Connection Errors

When an application throws a database error, analyzing the exact error message is the first step.

## 1. Connection Refused
**Symptom:** `Connection refused` or `No connection could be made because the target machine actively refused it`.
- **Meaning:** The network packet reached the server, but there is no service listening on the specified port.
- **Troubleshooting:**
  - Verify the Database service (e.g., `MSSQLSERVER`, `postgresql`) is actually running on the host.
  - Verify the DB is configured to accept remote connections (e.g., in PostgreSQL, check `postgresql.conf` for `listen_addresses = '*'`).
  - Ensure you are connecting to the correct port.

## 2. Timeout Expired
**Symptom:** `Timeout expired. The timeout period elapsed prior to completion of the operation.`
- **Meaning:** The client tried to connect, but the server didn't respond within the allowed time (usually 15-30 seconds).
- **Troubleshooting:**
  - This is almost always a **Network / Firewall** issue. The packets are being dropped silently.
  - See the [Network & Firewall](network.md) guide to test the path.

## 3. Too Many Connections
**Symptom:** `FATAL: sorry, too many clients already` or `Max pool size was reached`.
- **Meaning:** The database has reached its maximum allowed concurrent connections.
- **Troubleshooting:**
  - Check if the application has a "Connection Leak" (opening connections but not closing them).
  - Restart the application pool to kill zombie connections.
  - Temporarily increase the max connections limit on the DB server (if hardware resources allow).