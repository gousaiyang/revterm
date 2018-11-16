# revterm

A set of scripts to provide a stub terminal based on reverse connection using [`socat`](http://www.dest-unreach.org/socat/).

Reference: https://blog.ropnop.com/upgrading-simple-shells-to-fully-interactive-ttys

## Components

- `revterm_client`: A stub terminal which runs a given command line inside a [pseudoterminal](https://en.wikipedia.org/wiki/Pseudoterminal) and forwards streams to the `revterm_server`.
- `revterm_server`: A server that listens on a port forever, through which we can control the `revterm_client` in a fully interactive TTY session.
- `revterm_killserver`: A utility script to terminate the `revterm_server` (as it cannot be terminated by pressing Ctrl-C).
- `revconn_server`: A server that listens on a port forever, through which we can interact with the socket stream (like an infinite `nc -vvlp`).

## Installation

Clone this repository and install with `install.sh` (make sure you have `socat` installed).

Uninstall with `uninstall.sh`.
