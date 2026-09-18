# Troubleshooting Methodology

Before diving into specific commands, it is crucial to adopt a structured methodology. Randomly changing configurations often introduces new issues.

## 🧠 Core Diagnostic Approaches

Depending on the issue, we apply one of the following standard methodologies:

### 1. The OSI Model Approach (Divide and Conquer)
For network and connectivity issues, we use the OSI (Open Systems Interconnection) model. 
- **Bottom-Up:** Start at Layer 1 (Physical) - *Is the cable plugged in?* Move up to Layer 7 (Application).
- **Top-Down:** Start at Layer 7 - *Is the software running?* Move down to Layer 1.
- **Divide and Conquer:** Start at Layer 3 (Network) - *Can we ping the gateway?* If yes, go up. If no, go down.
> 🔗 **External Resource:** [Cloudflare - What is the OSI Model?](https://www.cloudflare.com/learning/ddos/glossary/open-systems-interconnection-model-osi/)

### 2. Follow the Path
Trace the flow of data from the source to the destination. Where does the flow break?
- *Example:* User PC -> Local Switch -> Firewall -> ISP -> Web Server.

### 3. Spot the Differences
Compare the non-working system with a known working system.
- *Example:* User A and User B have identical laptops. User A cannot print. What is different in User A's configuration?

## 🛡️ Golden Rules of Troubleshooting
1. **Always back up before making changes:** Never modify a configuration or registry key without a backup.
2. **Change one thing at a time:** If you change three variables at once and the issue is resolved, you won't know which one fixed it.
3. **Trust, but verify:** If a user says "I already restarted my computer," verify the `Uptime` via Task Manager.

> 🔗 **External Resource:** [Cisco Troubleshooting Methodologies](https://www.ciscopress.com/articles/article.asp?p=1574273&seqNum=2)