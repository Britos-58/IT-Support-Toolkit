# Common Ports & Protocols

To troubleshoot firewalls, application connections, and security policies, IT professionals must memorize standard network ports.

## 1. TCP vs. UDP
- **TCP (Transmission Control Protocol):** Connection-oriented. It guarantees delivery of packets. If a packet is lost, it is retransmitted. Used for web browsing, emails, and file transfers where accuracy is critical.
- **UDP (User Datagram Protocol):** Connectionless. It sends packets as fast as possible without verifying if they arrived. Used for live video streaming, VoIP calls, and online gaming where speed is more important than perfect accuracy.

## 2. Standard Port Reference Table

| Port | Protocol | Name / Purpose |
| :--- | :--- | :--- |
| **20 / 21** | TCP | **FTP (File Transfer Protocol)** - Unencrypted file transfers. |
| **22** | TCP | **SSH (Secure Shell)** - Secure command-line access to Linux/Unix systems. |
| **25** | TCP | **SMTP (Simple Mail Transfer Protocol)** - Sending email. |
| **53** | TCP/UDP | **DNS (Domain Name System)** - Resolving names to IPs. |
| **80** | TCP | **HTTP (Hypertext Transfer Protocol)** - Unencrypted web traffic. |
| **143** | TCP | **IMAP (Internet Message Access Protocol)** - Retrieving email (keeps sync with server). |
| **443** | TCP | **HTTPS (HTTP Secure)** - Encrypted web traffic (SSL/TLS). |
| **3389** | TCP | **RDP (Remote Desktop Protocol)** - Windows remote graphical access. |

> 💡 **Troubleshooting Tip:** If an application is failing to connect, verify if the local OS firewall or the corporate perimeter firewall is blocking outbound/inbound traffic on these specific ports.