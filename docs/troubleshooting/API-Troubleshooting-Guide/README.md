# API Troubleshooting Guide

Welcome to the API Troubleshooting Guide. Modern enterprise environments rely heavily on APIs (Application Programming Interfaces) to connect services. This guide covers how to diagnose and resolve common REST API integration issues.

## 📂 Table of Contents
- [HTTP Status Codes & Errors](http-errors.md) - Understanding 4xx and 5xx errors.
- [Authentication & Authorization](authentication.md) - API Keys, Bearer Tokens, and OAuth.
- [Timeout Issues](timeouts.md) - Connection vs. Read timeouts.
- [Practical Debugging](debugging.md) - Using cURL, Postman, and browser DevTools.

## 🛠️ Essential API Tools
To effectively troubleshoot APIs, you must be comfortable with the following tools:
- **cURL**: The standard command-line tool for sending HTTP requests.
- **Postman / Insomnia**: GUI tools for building, testing, and saving API requests.
- **Browser DevTools (F12)**: Specifically the **Network** tab to inspect frontend API calls.
- **jq**: Command-line JSON processor (useful for parsing large API responses).

> 🔗 **External Resource:** [Mozilla Developer Network (MDN) - HTTP Overview](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview)