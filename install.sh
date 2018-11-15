#!/bin/bash
cd "${0%/*}"
set -x
sudo cp revterm_client revterm_server revterm_killserver revconn_server /usr/local/bin/
