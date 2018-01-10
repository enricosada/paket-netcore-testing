
We use a temporary boostrapper in `paket-temp-boostrapper`, because atm this doesnt implement a 
.net core boostrapper

On unix/mac use `/` dir separator

Let's start, boostrap it

```bat
paket-temp-boostrapper\bootstrap
```

Now you have a `.paket\paket.cmd` (for win) and `.paket/paket` (for unix/mac).

You can just run

```
.paket\paket --help
```

and .net core sdk works as normal

```bat
dotnet build c1 -v n
```

## KNOWN ISSUES

- [ ] `dotnet build c1` fails on unix/mac
- [ ] `.paket/paket restore` fails on unix/mac with garbage in `.paket` dir
