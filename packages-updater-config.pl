#!/usr/bin/perl

use strict;
use warnings;


## CONFIG ##

# run emerge --sync first
our $doSync = 1;

# update overlays using layman -S
# requires app-portage/layman
our $doLayman = 0;

# update portage metadata if you don't do a sync
# eg /usr/portage is NFS share
our $doMetadata = 0;

# run eix update after sync
our $doEix = 0;

# re-merge 9999 version packages so they are updated too
# requires qlist from app-portage/portage-utils
our $do9999s = 0;

# number of parallel merges to run, see emerge --jobs option
our $jobs = 4;

# Use cfg-update to do automatic config updates
# requires app-portage/cfg-update
our $cfgUpdate = 0;

# Where is the log file kept?
# this is interpreted relative to script location
our $dolog = 1;
our $logfile = "./update-log";

# Where is the package blacklist kept?
# Packages on the blacklist will be fetched for you
our $blacklistfile = "./packages.noupdate";

## END CONFIG ##


1;

