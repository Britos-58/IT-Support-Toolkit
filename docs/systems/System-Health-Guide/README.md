# System Health Guide

Welcome to the System Health Guide. A healthy operating system relies on four primary hardware pillars: CPU, Memory, Storage, and Network. This module focuses on diagnosing performance bottlenecks and hardware exhaustion at the endpoint and server levels.

## 📂 Table of Contents
- [CPU Diagnostics](cpu-diagnostics.md) - High utilization, thermal throttling, and interrupts.
- [Memory Diagnostics](memory-diagnostics.md) - RAM exhaustion, memory leaks, and the paging file.
- [Storage Diagnostics](storage-diagnostics.md) - Disk I/O, SMART status, and capacity management.
- [Process Management](process-management.md) - Identifying and terminating rogue processes.

## 🎯 Core Concepts
- **Bottleneck:** A point of congestion in a system that slows down the overall performance. If a CPU is waiting for a slow hard drive to provide data, the hard drive is the bottleneck.
- **Resource Monitor (`resmon.exe`):** The built-in Windows tool that provides a much deeper view of hardware utilization than Task Manager.
- **Performance Monitor (`perfmon.exe`):** Used to gather long-term metrics and create data collector sets.