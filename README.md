# `durploy`: D(e)ploy Ur(bit) #

`durploy` is a shell utility for deploying and managing Urbit ships and desks.
More specifically, it's wrapper script for all the common Urbit workflows found
on the [Urbit website], particularly those enumerated in [Urbit "Environment
Setup"] and [Urbit "Software Distribution"].

## Installation ##

`durploy` is written in [Bourne Shell] and thus should run on most \*NIX platforms.
Presently, it has only been tested on Linux; your mileage may vary! Please
review the ["Dependencies"](#dependencies) section below if you encounter any
issues with missing commands.

### Quick and Easy ###

```bash
curl -LO https://raw.githubusercontent.com/urbit/durploy/release/durploy
./durploy
```

### Command Autocomplete ###

#### Bash ####

```bash
mkdir -p ${XDG_DATA_HOME:-$HOME/.local/share}/bash-completion/completions/
curl -O https://raw.githubusercontent.com/urbit/durploy/release/complete/durploy.bash \
	> ${XDG_DATA_HOME:-$HOME/.local/share}/bash-completion/completions/
```

#### ZSH ####

```bash
# FIXME: Needed to add instructions on getting this to work with .zcompdump
mkdir -p ${XDG_DATA_HOME:-$HOME/.local/share}/zsh-completion/
curl -O https://raw.githubusercontent.com/urbit/durploy/release/complete/_durploy \
	> ${XDG_DATA_HOME:-$HOME/.local/share}/zsh-completion/
echo "fpath=(${XDG_DATA_HOME:-$HOME/.local/share}/zsh-completion/ $fpath)" >> ~/.zprofile
```

## Usage ##

### Create/Run a Development Ship ###

```bash
durploy ship zod
```

### Synchronize a Desk to a Running Ship ###

```bash
durploy desk zod my-desk /path/to/my-desk/*
```

### Continually Deploy a Desk to a Running Ship ###

```bash
durploy desk -w zod my-desk /path/to/my-desk/*
```

### Remove a Development Ship ###

```bash
durploy nuke zod
```

## Configuration ##

Most default directory locations and Urbit files used by `durploy` can be
configured. For more information, see the "Config options" section of the
documentation output by `durploy --help`.

## Inspiration/Alternatives ##

- [`udm`](https://github.com/nogira/udm): Urbit desk manager written in Rust by
  [nogira](https://github.com/nogira/)
- [`bouncer`](https://github.com/tloncorp/bouncer): Urbit
  development/installation pipeline manager written in Ruby by
  [~datder-sonnet](https://urbit.org/ids/~datder-sonnet)
- [`install.sh`](https://github.com/timlucmiptev/btc-agents/blob/master/install.sh):
  Urbit desk synchronization script written in Bash by
  [~timluc-miptev](https://urbit.org/ids/~timluc-miptev) (with [a more featureful
  version](https://github.com/johnhyde/turf/blob/main/bin/install.sh) by
  [~midlev-mindyr](https://urbit.org/ids/~midlev-mindyr))
- [`copy.sh`](https://github.com/Fang-/suite/blob/master/pkg/copy.sh): An
  Urbit desk and dependencies synchronization script written in Bash by
  [~palfun-foslup](https://urbit.org/ids/~palfun-foslup)

## Dependencies ##

`durploy` uses a small set of system binaries for processing. Most of these
utilities are available by default on modern Linux systems, and all of them
should be readily available to install on most modern \*NIX systems.

This list is ordered roughly in descending order of expected availability:

- [`git`](https://www.man7.org/linux/man-pages/man1/git.1.html)
- [`curl`](https://www.man7.org/linux/man-pages/man1/curl.1.html)
- [`pgrep`](https://www.man7.org/linux/man-pages/man1/pgrep.1.html)
- [`which`](https://linux.die.net/man/1/which)
- [`readlink`](https://www.man7.org/linux/man-pages/man1/readlink.1.html)
- [`xargs`](https://www.man7.org/linux/man-pages/man1/xargs.1p.html)
- [`sha256sum`](https://www.man7.org/linux/man-pages/man1/sha256sum.1.html)
- [`touch`](https://www.man7.org/linux/man-pages/man1/touch.1.html)
- [`sh`](https://www.man7.org/linux/man-pages/man1/sh.1p.html)
- [`mkdir`](https://www.man7.org/linux/man-pages/man1/mkdir.1p.html)
- [`awk`](https://www.man7.org/linux/man-pages/man1/awk.1p.html)
- [`sed`](https://www.man7.org/linux/man-pages/man1/sed.1p.html)
- [`grep`](https://www.man7.org/linux/man-pages/man1/grep.1p.html)
- [`printf`](https://www.man7.org/linux/man-pages/man1/printf.1p.html)
- [`cp`](https://www.man7.org/linux/man-pages/man1/cp.1p.html)
- [`basename`](https://www.man7.org/linux/man-pages/man1/basename.1p.html)
- [`dirname`](https://www.man7.org/linux/man-pages/man1/dirname.1p.html)
- [`sleep`](https://www.man7.org/linux/man-pages/man1/sleep.1p.html)
- [`kill`](https://www.man7.org/linux/man-pages/man1/kill.1.html)

The following are additional dependencies required by the autocomplete scripts:

- [`find`](https://www.man7.org/linux/man-pages/man1/find.1p.html)
- [`realpath`](https://www.man7.org/linux/man-pages/man1/realpath.1.html)


[Bourne Shell]: https://en.wikipedia.org/wiki/Bourne_shell
[Urbit website]: https://developers.urbit.org/
[Urbit "Environment Setup"]: https://developers.urbit.org/guides/core/environment
[Urbit "Software Distribution"]: https://developers.urbit.org/guides/additional/software-distribution
