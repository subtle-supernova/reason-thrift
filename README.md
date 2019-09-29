# Thrift ocaml from reason

## Building

This will require a working node installation with `npm` and an opam install.

Install dune and esy
```
# requires 4.03.0
opam switch create 4.03.0
eval $(opam env --switch=4.03.0)

opam install dune

npm -g install esy
```

### Building ocaml thrift lib

You'll need to grab the thrift 0.12.0 source. In `thrift/lib/ocaml`

```
oasis setup
make
make install
opam pin add thrift .
```

Currently, this'll need ocaml 4.03.0 at a maximum.

### Build the project
Run esy
```
esy
```


Run with:
```bash
_esy/default/build/default/serverfmt/ServerGen.exe
_esy/default/build/default/clientfmt/ClientGen.exe
```

### Extra

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

