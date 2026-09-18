# Network & Firewall Diagnostics

Database servers are usually placed in highly secure, isolated subnets. Network configuration is a frequent cause of connection failures.

## 1. DNS Resolution
Applications should connect to databases via Hostname/FQDN (e.g., `db-prod.internal.company.com`), not raw IPs, to support failover.
- **Test:** From the application server, ping the database hostname to ensure it resolves to the correct IP.
  ```cmd
  nslookup <DB_Hostname>
  ```

## 2. Firewall Rules
Ensure there is an open rule on both the local OS firewall and the network perimeter firewall.
- **Test (PowerShell):** Check if the specific port is open.
  ```powershell
  Test-NetConnection -ComputerName <DB_Hostname> -Port 1433
  ```
  *(If `TcpTestSucceeded` is `False`, the firewall is blocking the connection or the DB is down).*

## 3. TLS / SSL Certificate Issues
Modern Cloud Databases (AWS RDS, Azure SQL) require encrypted connections.
- **Symptom:** `The certificate chain was issued by an authority that is not trusted.`
- **Troubleshooting:**
  - Ensure the application server has the correct Root CA certificate installed.
  - In connection strings, appending `TrustServerCertificate=True` can bypass this for testing (but should not be used in Production).