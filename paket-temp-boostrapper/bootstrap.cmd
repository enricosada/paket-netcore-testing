
pushd %~dp0

set PAKET_REPOTOOL_PREFERRED_RUNTIME=netcoreapp

paket.exe install

popd
