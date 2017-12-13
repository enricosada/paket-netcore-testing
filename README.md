
enable feature flag for .net core in bootstrapper

```bat
set PAKET_FEATURE_LOCALTOOL=1
set PAKET_FEATURE_NETCORE=1
```

and run boostrapper, to setup the .net core version

```bat
.paket\paket.bootstrapper.exe 5.125.6 --nuget-source=https://www.myget.org/F/paket-netcore-dev/api/v2 --force-nuget -f -v
```

now you have a `.paket\paket.cmd` (unix will have `paket`), and both can be run with just `paket` (if the directory is in PATH)

It's similar to my idea of repo level tools, just using a local temp dir (instead of nuget cache)

To build it, as usual

```bat
dotnet build c1 -v n
```

Env vars:

- `PAKET_FEATURE_LOCALTOOL` enable `paket.cmd`/`paket` wrapper scripts
- `PAKET_FEATURE_NETCORE` use .net core paket, otherwise usual .NET `paket.exe`

so using just `PAKET_FEATURE_LOCALTOOL`, will use normal .NET `paket.exe`, just rerun the boostrapper to change it

## KNOWN ISSUES

- `chmod+x` is missing for `.paket/paket`
- the .NET wrapper script `.paket/paket` on linux/mac doesnt invoke mono (but path to tool is ok)
- some wrong warning about `AppDataFolder`, `LocalApplicationData` on linux/mac.
