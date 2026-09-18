# Practical Debugging Commands

When an application is failing to consume an API, step outside the application and test the API directly using standard tools.

## 1. Using cURL (Command Line)
cURL is the universal way to test APIs from the terminal.

**Basic GET Request with verbose output (`-v`):**
```bash
curl -v -X GET "https://api.example.com/v1/users" \
     -H "Authorization: Bearer <Your_Token>"
```
*(The `-v` flag shows the exact handshake, headers sent, and headers received).*

**POST Request with JSON Payload:**
```bash
curl -X POST "https://api.example.com/v1/users" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer <Your_Token>" \
     -d '{"username": "jdoe", "email": "jdoe@example.com"}'
```

## 2. Using Postman
Postman is ideal for complex troubleshooting.
1. **Importing:** You can copy a failing network request from Chrome DevTools (Right-click -> Copy -> Copy as cURL) and import it directly into Postman.
2. **Environment Variables:** Use variables like `{{base_url}}` to quickly switch between Staging and Production environments.
3. **Console:** Use `View -> Show Postman Console` to see the raw HTTP request, which helps identify invisible characters or malformed headers.

## 3. Isolating the Issue
If the API works in Postman but fails in the application:
- The issue is **within the application code** (e.g., CORS policy blocking the browser, wrong environment variables, or parsing errors).
If the API fails in both Postman and the application:
- The issue is with the **API backend or network**.