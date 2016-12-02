#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use Time::Piece;

my $format = shift || '%H:%M';

while (1) {
  local $| = 1;

  my $now = localtime;

  say $now->strftime($format);
  sleep 60 - $now->second;
}
