# Configuration, Deployment & Licensing

In an enterprise, software is rarely installed using "Next -> Next -> Finish". It requires specific configurations and license injections.

## 1. MST (Transform) Files
When deploying software via Group Policy (GPO) or SCCM, you cannot click through the GUI to enter the license key or disable desktop shortcuts.
- **Solution:** You use an `.mst` (Transform) file alongside the `.msi`.
- **Command:** 
  ```cmd
  msiexec /i app.msi TRANSFORMS="config.mst" /qn
  ```
- *Troubleshooting:* If the software installs but is missing the license, verify that the deployment tool is successfully downloading the `.mst` file into the same cache folder as the `.msi`.

## 2. System vs. User Context Installations
A major cause of deployment failures is the installation context.
- **System Context:** Deploys via SCCM/Intune as `NT AUTHORITY\SYSTEM`. It installs for all users (`C:\Program Files`). 
- **User Context:** Installs only for the logged-in user (`%LocalAppData%`).
- *Troubleshooting:* If an app fails to install via Intune but works manually, it's likely because the installer requires User Context to write to `HKEY_CURRENT_USER`, but the deployment was mistakenly set to System Context.

## 3. Licensing & Activation Issues
**Symptom:** Software installs fine, but prompts the user for a license key on the first launch.
- Check if the vendor requires a registry key to be injected post-install.
- Check if the software relies on a local License Server (e.g., FlexNet, KMS). Ensure the client PC can ping the License Server on its specific port.