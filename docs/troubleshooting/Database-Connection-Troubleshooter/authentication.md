# Authentication & Permission Issues

If the network path is clear and the database is listening, the next barrier is authentication.

## 1. Login Failed for User
**Symptom:** `Login failed for user '<Username>'`.
- **Troubleshooting:**
  - Verify the password is correct (passwords in connection strings often break if they contain special characters like `@` or `;` that aren't properly URL-encoded).
  - Check if the account is locked due to too many failed attempts.
  - Verify if the user exists on the target database instance.

## 2. Windows Authentication vs. SQL Authentication (MSSQL)
In Microsoft environments, applications often use Service Accounts to connect via Active Directory (Windows Authentication).
- **Symptom:** `Login failed. The login is from an untrusted domain and cannot be used with Windows authentication.`
- **Troubleshooting:**
  - Ensure the application server and the database server are on the same domain or have a trust relationship.
  - If using SQL Authentication (username/password), ensure the SQL Server is configured for **Mixed Mode Authentication**, not just Windows Auth.

## 3. Database Permissions
**Symptom:** The connection succeeds, but the application throws `SELECT permission was denied on the object 'Users'`.
- **Meaning:** The user authenticated successfully but lacks the required roles (Authorization).
- **Troubleshooting:**
  - Check the user's mapped roles (e.g., `db_datareader`, `db_datawriter`).
  - Ensure the user is mapped to the correct specific database, not just the master database.