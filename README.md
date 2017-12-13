
enable feature flag for .net core in bootstrapper

```bat
set PAKET_FEATURE_LOCALTOOL=1
set PAKET_FEATURE_NETCORE=1
```

or equivalent export in linux/mac

and run boostrapper (add usual prefix `mono` on linux/mac), to setup the .net core version)

```bat
.paket\paket.bootstrapper.exe 5.125.6 --nuget-source=https://www.myget.org/F/paket-netcore-dev/api/v2 --force-nuget -f -v
```

now you have a `.paket\paket.cmd` (for win) and `.paket/paket` (for unix/mac).
as a note, both can be run with just `paket` if that directory is in `PATH`

It's similar to my idea of repo level tools, just using a local temp dir (instead of nuget cache) inside the already gitignored `paket-files` dir

To build it, as usual

```bat
dotnet build c1 -v n
```

Env vars:

- `PAKET_FEATURE_LOCALTOOL` enable `paket.cmd`/`paket` wrapper scripts
- `PAKET_FEATURE_NETCORE` use .NET Core paket, otherwise usual .NET Framework `paket.exe` (with mono on unix/mac)

so using just `PAKET_FEATURE_LOCALTOOL`, will use normal .NET `paket.exe`, just rerun the boostrapper with different env var setting for use another configuration

## KNOWN ISSUES

- some wrong warning about `AppDataFolder`, `LocalApplicationData` on linux/mac.
