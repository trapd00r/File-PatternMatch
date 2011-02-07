#!/usr/bin/perl
use Test::More tests => 2;
use strict;
use File::PatternMatch qw(patternmatch);

my $r = patternmatch(undef, 'Hack.the.Planet.S01E01-HACKERS');

is(ref($r), 'HASH', 'Hash ref returned');

is(
  $r->{0}->{'Hack.the.Planet.S01E01-HACKERS'},
  'New Show', 'New show: Hack.the.Planet.S01E01-HACKERS');
