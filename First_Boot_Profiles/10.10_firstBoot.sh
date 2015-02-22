#!/bin/sh

# Created by Amsys
#
# Use at your own risk.  Amsys will accept
# no responsibility for loss or damage
# caused by this script.

# Requires 10.10 or higher.

# Create a local admin user account
sysadminctl -addUser localadmin -fullName "Local Admin" -UID 499 -password "apassword" -home /var/localadmin -admin

# Set the time zone to London
/usr/sbin/systemsetup -settimezone "Europe/London"

# Enable network time servers
/usr/sbin/systemsetup -setusingnetworktime on

# Configure a specific NTP server
/usr/sbin/systemsetup -setnetworktimeserver "ntp.amsys.co.uk"

ARD="/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart"

# Switch on Apple Remote Desktop
$ARD -configure -activate

# Configure ARD access for the localadmin user
$ARD -configure -access -on
$ARD -configure -allowAccessFor -specifiedUsers
$ARD -configure -access -on -users localadmin -privs -all

# Enable SSH
systemsetup -setremotelogin on

exit 0