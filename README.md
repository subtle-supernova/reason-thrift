# Thrift ocaml from reason

## Building

Install esy
`npm -g install esy`

Run esy
`esy`

```bash
_esy/default/build/default/serverfmt/ServerGen.exe
_esy/default/build/default/clientfmt/ClientGen.exe
```

`ServerGen` and `ClientGen` were generated using `refmt`

```
npm install -g reason-cli
# or
npm install -g reason-cli@latest-macos
```

These were generated using thrift 0.12.0

in `thrift/tutorial/ocaml`

```
refmt --parse ml --print re CalcClient.ml > ClientGen.re
refmt --parse ml --print re CalcServer.ml > ServerGen.re
```

You can generate the thrift source in `thrift/tutorial`
```
thrift -r --gen ocaml tutorial.thrift
```
