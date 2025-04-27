# InvisiShell Profiler

> CLR profiler that disables **AMSI** and **ETW** for the current PowerShell session.  
> Works on Windows 7 – 11 with .NET Framework 4.x.  
> **For lab, CTF or research use only.**

---

## Folder contents

| File                              | Purpose |
|-----------------------------------|---------|
| **InShellProf.dll**               | x64 DLL that hooks AMSI + ETW |
| **RunWithRegistryNonAdmin.bat**   | User-mode start-up: sets `COR_*`, writes a CLSID under **HKCU**, launches PowerShell, then cleans up |
| **RunWithPathAsAdmin.bat**        | Admin start-up: sets `COR_PROFILER_PATH` (no registry write) and launches PowerShell |
| **README.md**                     | This file |

> **32-bit note** If you need WOW64 support, compile a 32-bit `InShellProf32.dll` and tweak the batch files.

---

## Quick start

```cmd
:: non-admin (writes to HKCU)
RunWithRegistryNonAdmin.bat

:: — or — admin (no registry write)
RunWithPathAsAdmin.bat
