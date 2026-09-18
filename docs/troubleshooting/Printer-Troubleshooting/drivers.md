# Printer Driver Diagnostics

Incorrect or corrupted drivers cause issues like printing gibberish (random symbols), missing trays, or the spooler crashing.

## 1. PCL vs. PostScript (PS)
Enterprise printers usually offer two types of drivers:
- **PCL (Printer Command Language):** Best for standard office documents (Word, Excel, Emails). It relies on the local PC to process the print job.
- **PostScript (PS):** Best for high-quality graphics and PDFs (Adobe Illustrator, CAD). It sends the raw code to the printer, and the printer's CPU processes the image.
- *Fix:* If a PDF is printing slowly or missing text, switch the driver from PCL to PostScript (or vice versa).

## 2. Using Print Server Properties (Clean Removal)
Simply deleting a printer from "Devices and Printers" **does not** remove the driver from Windows. To completely remove a corrupted driver:

1. Press `Win + R` and run:
   ```cmd
   printui.exe /s /t2
   ```
2. This opens the **Print Server Properties** -> **Drivers** tab.
3. Select the problematic driver and click **Remove**.
4. Choose **Remove driver and driver package** (This completely wipes it from the Windows Driver Store).
5. Reboot the PC and install the fresh driver downloaded directly from the manufacturer's website (HP, Canon, Xerox, etc.).

## 3. Type 3 vs. Type 4 Drivers
- **Type 3:** Legacy drivers. They run in the same process as the spooler. If a Type 3 driver crashes, it takes down the entire Print Spooler.
- **Type 4:** Modern Windows drivers. They run in an isolated sandbox. If a Type 4 driver crashes, the Spooler stays up.
- *Best Practice:* Use Type 4 drivers or "V4" drivers whenever possible in Windows 10/11 and Windows Server environments.