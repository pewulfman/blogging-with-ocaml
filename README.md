# Blogging with Ocaml

> A blog completly written in ocaml. Because I can.

Shamefuly forked from [XVW's capsule](https://github.com/xvw/capsule) project,
all credit to him until I make it my own. Go check his work.

## Local installation

The most standard way to start a development environment is to build a "_local
switch_" by sequentially running these different commands (which assume that
[OPAM](https://opam.ocaml.org/) is installed on your machine).

```shellsession
opam update
opam switch create . ocaml-base-compiler.5.0.0 --deps-only -y
eval $(opam env)
```

Once the switch has been initialized, you need to install _the pinned
dependencies_ (at the time of writing this README, **YOCaml is not yet available
on OPAM**, which is very **sad**), by running these commands:

```shellsession
opam install yocaml
opam install yocaml_unix yocaml_yaml yocaml_jingoo
```

And since the JavaScript part of the application relay on ... `npm`, you have to
install `npm` and running `make` will build the inner library... `hell.js`.

If everything went well, which I don't doubt for a second, the project should be
compilable and executable, you can now contribute to this blog, for example, to
correct spelling mistakes... For ease of use, I use `make` as a very
_sophisticated orchestrator_. You can run the `make` command to build the binary
that statically serves the site.

## Up and running

- `dune exec bin/capsule.exe -- build [--target=TARGET]` build the website into `TARGET`
- `dune exec bin/capsule.exe -- watch [--target=TARGET] [--port=PORT]` build the website
  into `TARGET` and serve `TARGET` listening `PORT`.
