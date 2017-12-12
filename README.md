
enable feature flag for .net core in bootstrapper

```
set PAKET_FEATURE_LOCALTOOL=1
set PAKET_FEATURE_NETCORE=1
```

and run boostrapper, to setup the .net core version

```
.paket\paket.bootstrapper.exe 5.125.6 --nuget-source=https://www.myget.org/F/paket-netcore-dev/api/v2 --force-nuget -f -v
```

now you have a `.paket\paket.cmd` (unix will have `paket`), and both can be run with just `paket` (if the directory is in PATH)

It's similar to my idea of repo level tools, just using a local temp dir (instead of nuget cache)

To build it, as usual

```
dotnet build c1 -v n
```
