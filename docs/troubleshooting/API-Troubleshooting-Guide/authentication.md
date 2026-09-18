# API Authentication & Authorization

Authentication issues (401) and Authorization issues (403) are the most common causes of API integration failures. 

## 1. API Keys
**How it works:** A static string passed in the header or URL parameters.
- **Header Example:** `x-api-key: [Your_API_Key]`
- **Troubleshooting:** 
  - Ensure the key hasn't been revoked or expired.
  - Check if the API requires the key in the Header vs. Query String.

## 2. Bearer Tokens (JWT)
**How it works:** A temporary token generated after login, passed in the Authorization header.
- **Header Example:** `Authorization: Bearer [Token]`
- **Troubleshooting:**
  - Tokens expire. Check if the token is still valid.
  - **Pro Tip:** If the token is a JWT (JSON Web Token, usually starts with `eyJ`), you can decode it to check its contents (like expiration time `exp` or user roles).
  > 🔗 **External Resource:** [JWT.io - JSON Web Token Decoder](https://jwt.io/)

## 3. OAuth 2.0
**How it works:** A complex flow involving Client IDs, Client Secrets, and Grant Types to obtain an Access Token.
- **Troubleshooting:**
  - Verify the `client_id` and `client_secret`.
  - Ensure the requested `scope` matches the permissions granted to the application.
  - Check if the redirect URI matches exactly what is registered in the Identity Provider (IdP).