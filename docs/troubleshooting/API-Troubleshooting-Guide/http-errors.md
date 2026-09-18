# HTTP Status Codes & Error Handling

When an API request fails, the HTTP Status Code is your first and most important clue. They are divided into standard classes.

## 🟡 4xx Client Errors (The client did something wrong)
These errors mean the request sent by the user/application is malformed, unauthorized, or requesting something that doesn't exist.

- **400 Bad Request:** The server cannot understand the request due to invalid syntax or a missing required parameter in the JSON payload.
  - *Fix:* Check the API documentation. Validate the JSON body.
- **401 Unauthorized:** The client must authenticate itself to get the requested response. (Missing or invalid token).
- **403 Forbidden:** The client is authenticated, but does not have the necessary permissions (Scope/Roles) to access the resource.
- **404 Not Found:** The requested endpoint `<Endpoint_URL>` does not exist. (Check for typos in the URL).
- **429 Too Many Requests:** Rate limiting. The client has sent too many requests in a given amount of time.
  - *Fix:* Check the `Retry-After` header and implement exponential backoff.

## 🔴 5xx Server Errors (The server failed)
These errors mean the request was valid, but the server failed to fulfill it.

- **500 Internal Server Error:** A generic error indicating the server encountered an unexpected condition (e.g., code exception, unhandled bug).
  - *Fix:* Check application backend logs.
- **502 Bad Gateway:** The server acting as a gateway/proxy received an invalid response from the upstream server.
- **503 Service Unavailable:** The server is not ready to handle the request (usually down for maintenance or overloaded).
- **504 Gateway Timeout:** The gateway did not get a response in time from the upstream server.

> 🔗 **External Resource:** [HTTP Status Dogs](https://httpstatusdogs.com/) (A fun and memorable way to remember status codes).