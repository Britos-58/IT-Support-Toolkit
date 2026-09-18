# Latency and Packet Loss

Latency (delay) and packet loss cause slow application performance, dropped VoIP calls, and VPN disconnects.

## 1. Continuous Ping (Baseline Testing)
To identify intermittent drops, run a continuous ping to a reliable external server or the default gateway.

```cmd
ping 8.8.8.8 -t
```
*(Press `Ctrl + C` to stop and view statistics).*
- **High Latency:** Consistent times > 100ms (for local/regional connections) indicate congestion or routing issues.
- **Packet Loss:** If you see "Request timed out" randomly, packets are being dropped. Even 1-2% packet loss will severely impact VoIP and video calls.

## 2. Tracing the Route
If latency is high, you need to know *where* the delay is happening. Is it on the local network, the ISP, or the destination server?

```cmd
tracert 8.8.8.8
```
Look for the specific "hop" where the response time (ms) spikes dramatically. 
- Spikes on Hop 1 or 2 = Internal network / Router issue.
- Spikes on Hop 3+ = ISP or backbone routing issue.

## 3. Pathping / MTR
`pathping` (Windows) combines `ping` and `tracert`. It sends hundreds of packets to each router in the path to calculate exact packet loss percentages per hop.

```cmd
pathping 8.8.8.8
```
*(Note: Pathping takes several minutes to complete its calculation. Be patient.)*