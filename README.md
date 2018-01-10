
We use a temporary boostrapper in `paket-temp-boostrapper`, because atm this doesnt implement a 
.net core boostrapper

Let's start, boostrap it

```bat
paket-temp-boostrapper\bootstrap
```

Now you have a `.paket\paket.cmd` (for win).

You can just run

```
.paket\paket --help
```

and .net core sdk works as normal

```bat
dotnet build c1 -v n
```

## KNOWN ISSUES

- [] no unix/mac for now. but `./paket-temp-boostrapper/paket-files/bin/paket` works as shell script to invoke
