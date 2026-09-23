# Disaster Recovery Steps

When data loss occurs (due to hardware failure, accidental deletion, or ransomware), follow a structured recovery process.

## 1. Verify the Scope of Loss
Before clicking "Restore", understand exactly what was lost.
- Did a user accidentally delete a single Excel file? (Use Windows Volume Shadow Copy / "Previous Versions" or the Recycle Bin).
- Did an entire server crash? (Requires a Bare-Metal Restore or spinning up a Cloud VM replica).

## 2. The Ransomware Protocol
If the data loss is due to Ransomware (files are encrypted and have strange extensions):
1. **Isolate:** Immediately disconnect the infected machine from the network (pull the ethernet cable / disable Wi-Fi) to stop the spread. DO NOT turn it off, as RAM forensics might be needed.
2. **Do Not Pay:** Standard policy is to never pay the ransom.
3. **Verify Backups:** Check the backup server. If the backups are segmented or immutable, they are safe.
4. **Wipe and Restore:** Completely format the infected machines. Restore the OS, then restore the data from the last known clean backup (meeting the RPO).

## 3. Testing Restores (The Golden Rule)
**"An untested backup is not a backup; it's a wish."**
- IT departments must perform routine "Fire Drills".
- Once a month, randomly select a server or a set of files and attempt to restore them to an isolated test environment.
- Document the time it took to restore to ensure it meets the business's **RTO (Recovery Time Objective)**.