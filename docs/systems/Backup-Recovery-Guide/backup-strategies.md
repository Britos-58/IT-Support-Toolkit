# Backup Strategies

A backup is only as good as its ability to be restored. Implementing standard industry strategies ensures data resilience.

## 1. The 3-2-1 Backup Rule
The golden standard of data protection. Every critical dataset must follow this rule:
- **3 Copies of Data:** The primary production data + 2 backup copies.
- **2 Different Media Types:** E.g., one copy on a local NAS (Network Attached Storage), one copy on a Tape drive or Cloud storage.
- **1 Offsite Copy:** At least one copy must be physically located in a different geographical area (to protect against fire, flood, or theft at the primary data center).

## 2. Backup Types
- **Full Backup:** Copies 100% of the data. 
  - *Pros:* Fastest to restore. 
  - *Cons:* Takes the longest to run and uses the most storage space.
- **Incremental Backup:** Copies only the data that has changed since the *last backup* of any kind.
  - *Pros:* Very fast to run, uses minimal storage.
  - *Cons:* Slowest to restore (requires restoring the last Full backup, plus every single incremental backup in chronological order).
- **Differential Backup:** Copies all data changed since the *last Full backup*.
  - *Pros:* Faster to restore than Incremental (only requires the Full backup + the latest Differential).

## 3. RPO and RTO
- **RPO (Recovery Point Objective):** How much data can the business afford to lose? (e.g., If backups run every 24 hours, the RPO is 24 hours).
- **RTO (Recovery Time Objective):** How long can the system be offline before it severely damages the business? (e.g., We must have the database restored and running within 4 hours).