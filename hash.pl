#!/usr/bin/perl -w
#
use strict;

#Sorting hash by values and keys
my %hash1 = qw(a 12 b 10 c 23 d 12  e 10 f 15 g 23 h 23); 

print "$hash1{$_} - $_  \n" for sort { $hash1{$b} <=> $hash1{$a} || $a cmp $b} keys %hash1;
