MS-MSDT-Proactive-remediation
=======
Uses Intune Proactive remediations to detect and Move the MS-MSDT class, this is to address CVE-2022-30190 (Follina) Vulnerability.

Intune Proactive Remediations
-------
The gives you some reporting on the current status of machines uncheck or having the issues remediated by these scripts.<br>

**Location to create a script package:** <br>
```From Intune > Reports > Endpoint Analytics > Create script package```<br>

After selecting the assigned devices you can also add a schedule for how often those devices are checked.<br>

Scripts
-------
Detection and remediation scripts will be required when you setup the proactive remediation script package in Intune.

```Detection-MSDT.ps1``` - Checks if Key exists reports exit code 1 if true or on failure, reports 0 if key is not present.

```Remediate-MSDT.ps1``` - Renames MS-MSDT key to keep a backup for future restoration.

*No responsibility is taken for the use of these scripts.
