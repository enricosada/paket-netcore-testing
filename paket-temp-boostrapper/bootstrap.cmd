@ECHO OFF

pushd %~dp0

echo.
echo we are going to boostrap paket as repo tool, using .net core framework
echo so will download paket from Paket.nupkg
echo using this temporary boostrapper
echo.

REM we want to use paket .net core
set PAKET_REPOTOOL_PREFERRED_RUNTIME=netcoreapp

REM install to download the paket as repo tool
echo paket.exe install --verbose
paket.exe install --verbose

REM hack to override the paket path
copy /Y Directory.Build.props.xml ..\Directory.Build.props

REM copy wrapper
copy /Y paket.netcore.cmd ..\.paket\paket.cmd

echo.
echo DONE!
echo.
echo now you can use:
echo.
echo .paket\paket --help
echo.
echo NOTE this is just a symlink to paket-temp-boostrapper\paket-files\bin\paket
echo.

popd
