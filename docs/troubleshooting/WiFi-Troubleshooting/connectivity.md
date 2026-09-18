# Wi-Fi Connectivity & Authentication

When a device can see the network (SSID) but cannot successfully connect or access the internet.

## 1. Authentication Failures (Wrong Password / 802.1X)
**Symptom:** Windows says "Can't connect to this network" immediately after entering credentials.
- **Troubleshooting:**
  - **PSK (Pre-Shared Key):** The password might have changed. Forget the network and try again.
    ```cmd
    netsh wlan delete profile name="<SSID_Name>"
    ```
  - **Enterprise 802.1X (RADIUS):** If the network uses corporate credentials (username/password or certificates), check if the user's AD password recently expired or if their machine certificate is invalid.

## 2. Captive Portal Issues (Public/Guest Wi-Fi)
**Symptom:** Connected to the Guest Wi-Fi, but no internet access. The login page never pops up.
- **Troubleshooting:**
  - Modern OSes try to ping a specific URL (like `msftconnecttest.com`) to detect a portal. If custom DNS (like 8.8.8.8) is hardcoded on the NIC, it might break the portal redirect.
  - **Fix:** Open a browser and navigate to an HTTP (not HTTPS) site, such as `http://neverssl.com`. This forces the router to intercept the unencrypted traffic and display the login page.

## 3. "Connected, No Internet" (IP Configuration)
**Symptom:** The Wi-Fi icon shows a yellow triangle.
- **Troubleshooting:**
  - The PC successfully authenticated to the Access Point (Layer 2), but failed to get a valid IP address from the DHCP server (Layer 3).
  - Run `ipconfig /all`. If the IP is `169.254.x.x` (APIPA), the DHCP pool might be exhausted, or the AP has lost connection to the main switch.