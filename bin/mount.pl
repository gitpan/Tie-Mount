#!/usr/bin/perl

use strict;
use warnings;
use Tie::Mounted;

my $node = '';

tie my @mounted, 'Tie::Mounted', '-v', $node;
local $, = "\n";
print @mounted; print "\n";
untie @mounted;
