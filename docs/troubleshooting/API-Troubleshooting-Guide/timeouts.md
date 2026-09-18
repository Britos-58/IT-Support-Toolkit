# API Timeout Issues

Timeouts occur when a request takes longer than the configured threshold. It is crucial to distinguish between the two main types of timeouts.

## 1. Connection Timeout
**Symptom:** The client cannot even establish a TCP connection to the API server.
- **Common Causes:**
  - The API server is completely down.
  - A firewall or Security Group is blocking outbound traffic on port 443.
  - DNS resolution failed.
- **Diagnostic Step:** Try to `ping` or `Test-NetConnection` the API hostname.

## 2. Read / Response Timeout
**Symptom:** The connection is established successfully, but the server takes too long to send the data back, and the client closes the connection (often resulting in a 504 Gateway Timeout).
- **Common Causes:**
  - The database query triggered by the API is too slow or locked.
  - The requested payload is too large (e.g., requesting 1,000,000 records without pagination).
  - The backend service is overwhelmed (High CPU/Memory).
- **Diagnostic Step:** 
  - Check backend APM (Application Performance Monitoring) tools like Datadog or New Relic.
  - Add pagination to the request (e.g., `?limit=50&offset=0`).

## 3. Standard Troubleshooting Questions
When escalating a timeout issue, always provide:
1. Exact endpoint URL (`<Endpoint_URL>`).
2. Is the timeout consistent or intermittent?
3. How long does it take before it times out? (e.g., exactly 30 seconds usually points to a hardcoded load balancer limit).