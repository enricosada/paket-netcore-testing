@ECHO OFF

SETLOCAL

REM we want to use paket .net core
set PAKET_REPOTOOL_PREFERRED_RUNTIME=netcoreapp

dotnet msbuild "%~dp0\bootstrap.proj" /nologo %*
