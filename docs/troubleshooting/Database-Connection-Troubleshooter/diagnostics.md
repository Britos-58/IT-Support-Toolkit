# Diagnostic Tools & Methods

Do not rely solely on the application's generic error messages. Use native tools to test the connection directly from the application server to the database.

## 1. ODBC Data Source Administrator (Windows)
If you are on a Windows Server, use the built-in ODBC tool to test connectivity without needing third-party software.
1. Press `Win + R` and type `odbcad32.exe`.
2. Go to **System DSN** -> **Add**.
3. Select the appropriate driver (e.g., SQL Server).
4. Enter the Server Name and Credentials.
5. Click **Test Data Source**. This provides detailed, low-level error messages.

## 2. Command Line Clients
If installed, use native CLI tools to attempt a connection. This proves whether the issue is with the database or the application's code.

**SQL Server (`sqlcmd`):**
```cmd
sqlcmd -S <Server_Name> -U <Username> -P <Password>
```

**PostgreSQL (`psql`):**
```bash
psql -h <Host> -p 5432 -U <Username> -d <Database_Name>
```

**MySQL (`mysql`):**
```bash
mysql -h <Host> -P 3306 -u <Username> -p
```

## 3. Telnet (Legacy Network Test)
If `Test-NetConnection` (PowerShell) is unavailable, `telnet` is the classic way to test if a port is open.
```cmd
telnet <DB_Hostname> 1433
```
*(If the screen goes blank, the connection is successful. If it says "Connect failed", the port is blocked).*