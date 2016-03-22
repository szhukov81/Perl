#!/usr/bin/perl -w
#
use strict;

#Sorting hash by values and keys
print "\nSorting by 2 values\n\n";

my %hash1 = qw(a 12 b 10 c 23 d 12  e 10 f 15 g 23 h 23); 

print "$hash1{$_} - $_  \n" for sort { $hash1{$b} <=> $hash1{$a} || $a cmp $b} keys %hash1;

#Reading all values
print "\nRead all values from hash\n\n";
while ( my ($key, $value) = each %hash1 ) {
    print "$key - $value\n";
}

#Reading all values in fixed order of keys
my @key = keys %hash1;
my @value = @hash1{@key};
print "$_\n" for @value;
