@echo off
REM ------------------------------------------------------------------
REM  InvisiShell Profiler – Copyright © 2025  vectoa
REM  SPDX-License-Identifier: MIT
REM  See LICENSE file at the project root for full text.
REM ------------------------------------------------------------------

set COR_ENABLE_PROFILING=1
set COR_PROFILER={cf0d821e-299b-5307-a3d8-b283c03916db}
set COR_PROFILER_PATH=%~dp0InShellProf.dll

powershell

set COR_ENABLE_PROFILING=
set COR_PROFILER=
set COR_PROFILER_PATH=
