Will force FV2 encryption on next logout, and will force FV on, but will *Not* lock out the other Security & Privacy System Preferences settings

If deploying using Jamf Pro (Formally Casper), this *must* be signed before upload, and left signed in the JSS to stop it breaking the profile.
Example signing command:
/usr/bin/security cms -S -N "[certificate common name with private key in keychain]" -i "~/Desktop/de-signed-Enable FileVault 2 Encryption.mobileconfig" -o "~/Desktop/Enable FileVault 2 Encryption.mobileconfig"

(Source: https://www.jamf.com/jamf-nation/discussions/20211/signing-os-x-configuration-profiles#responseChild122009)

A self-generated signing cert signed (say it three times fast) version of this profile can be found in the same repo:
"Enable FileVault 2 Encryption - signed.mobileconfig"

Built and tested by Darren Wallace
Tested on 10.12.5.


