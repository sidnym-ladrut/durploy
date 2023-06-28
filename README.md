# `durploy`: D(e)ploy Ur(bit) #

`durploy` is a POSIX shell utility for deploying and managing Urbit ships and
desks. More specifically, it's wrapper script for all the common Urbit
workflows found on the [Urbit website], particularly those enumerated in [Urbit
"Environment Setup"] and [Urbit "Software Distribution"].

## Installation ##

`durploy` is written in POSIX shell and thus should run on most \*NIX
platforms. Presently, it has only been tested on Arch Linux; your mileage may
vary! Please review the ["Dependencies"](#dependencies) section below if you
encounter any issues with missing commands.

### Quick and Easy ###

```bash
curl -LO https://github.com/sidnym-ladrut/durploy/archive/refs/heads/develop.zip
unzip develop.zip
durploy-develop/durploy
```

### Package Distribution ###

`durploy` isn't currently available via standard package managers. Once it is,
instructions on installing via these managers will be filled in here.

## Usage ##

### Create/Run a Development Ship ###

```bash
durploy ship zod /path/to/zod
```

### Synchronize a Desk to a Running Ship ###

```bash
durploy desk my-desk /path/to/my-desk /path/to/zod
```

### Continually Deploy a Desk to a Running Ship ###

```bash
durploy desk --watch my-desk /path/to/my-desk /path/to/zod
```

## Configuration ##

This section will be written once `durploy` supports configuration files.

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

## Dependencies ##

`durploy` uses a small set of system binaries for processing. Most of these
utilities are available by default on modern Linux systems, and all of them
should be readily available to install on most modern \*NIX systems.

This list is ordered roughly in descending order of expected availability:

- [`tmux`](https://github.com/tmux/tmux/wiki) (will be optional in future
  versions)
- [`rsync`](https://www.man7.org/linux/man-pages/man1/rsync.1.html)
- [`pgrep`](https://www.man7.org/linux/man-pages/man1/pgrep.1.html)
- [`readlink`](https://www.man7.org/linux/man-pages/man1/readlink.1.html)
- [`find`](https://www.man7.org/linux/man-pages/man1/find.1p.html)
- [`xargs`](https://www.man7.org/linux/man-pages/man1/xargs.1p.html)
- [`mkdir`](https://www.man7.org/linux/man-pages/man1/mkdir.1p.html)
- [`awk`](https://www.man7.org/linux/man-pages/man1/awk.1p.html)
- [`sed`](https://www.man7.org/linux/man-pages/man1/sed.1p.html)
- [`grep`](https://www.man7.org/linux/man-pages/man1/grep.1p.html)
- [`printf`](https://www.man7.org/linux/man-pages/man1/printf.1p.html)
- [`basename`](https://www.man7.org/linux/man-pages/man1/basename.1p.html)
- [`dirname`](https://www.man7.org/linux/man-pages/man1/dirname.1p.html)
- [`sleep`](https://www.man7.org/linux/man-pages/man1/sleep.1p.html)


[Urbit website]: https://developers.urbit.org/
[Urbit "Environment Setup"]: https://developers.urbit.org/guides/core/environment
[Urbit "Software Distribution"]: https://developers.urbit.org/guides/additional/software-distribution
