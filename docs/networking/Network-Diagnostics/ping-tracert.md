# Ping & Tracert (Traceroute)

These are the two most fundamental tools for testing Layer 3 (Network Layer) connectivity. Both rely on **ICMP (Internet Control Message Protocol)**.

## 1. Ping (Packet InterNet Groper)
`ping` sends an ICMP Echo Request to a target and waits for an ICMP Echo Reply. It measures the round-trip time (latency) and records any packet loss.

**Basic Usage:**
```cmd
ping google.com
```

**Advanced Switches (Windows):**
- `ping -t <IP>`: Continuous ping. Runs until you press `Ctrl + C`. Excellent for monitoring if a server comes back online after a reboot.
- `ping -n 10 <IP>`: Sends exactly 10 packets instead of the default 4.
- `ping -a <IP>`: Resolves addresses to hostnames (Reverse DNS lookup).

**Interpreting Results:**
- **Reply from `<IP>`:** Success. The target is reachable.
- **Request timed out:** The packet reached the network, but the target did not reply (often blocked by a firewall, or the target is offline).
- **Destination host unreachable:** The local PC or router does not know how to find a path to that network.

## 2. Tracert (Trace Route)
While `ping` tells you *if* a destination is reachable, `tracert` tells you *how* the packets get there, hop by hop (router by router).

**Basic Usage:**
```cmd
tracert 8.8.8.8
```

**How it works:**
It manipulates the **TTL (Time to Live)** value of packets. It sends a packet with a TTL of 1, so the first router drops it and sends back an error. Then TTL 2, hitting the second router, and so on, building a map of the path.

**Interpreting Results:**
- If the trace fails at Hop 1 or 2, the issue is inside your local corporate network.
- If the trace fails at Hop 5 or 6, the issue is with your ISP (Internet Service Provider).
- If you see `* * * Request timed out` in the middle of a trace, but it continues afterwards, that specific router is simply configured to ignore ICMP requests (this is normal for security reasons).