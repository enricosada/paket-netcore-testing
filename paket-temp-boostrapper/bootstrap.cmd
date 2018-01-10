
pushd %~dp0

REM we want to use paket .net core
set PAKET_REPOTOOL_PREFERRED_RUNTIME=netcoreapp

REM install to download the paket as repo tool
paket.exe install

REM hack to override the paket path
copy /Y Directory.Build.props.xml ..\Directory.Build.props

popd
