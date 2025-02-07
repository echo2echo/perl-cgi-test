#!/usr/bin/env perl

## Use the following shbang if you have perlbrew on your suystem.. Change user to your local username and your version of perl ... For use on linux
###!/home/user/perl5/perlbrew/perls/perl-5.40.1/bin/perl

use strict;
use warnings;
use diagnostics;




### Start Elapsed Execution Time

use Time::HiRes qw( gettimeofday tv_interval );

my $t0 = [gettimeofday];

my $seconds;
my $microseconds;

($seconds, $microseconds) = gettimeofday;

### handle small numbers ###
$microseconds = $seconds * 1000 + $microseconds / 1000;

### End beginning of execution time.... See Below for final interval code





print "Content-Type: text/html\n\n";






### perl Version Begin ###

my $version = "$^V";

print "perl version summary...<br><br>";

print "Version; $version\n <br>";

print "Alt Version: $]\n <br><br>";

print "\n <br>";

### perl Version End ###






### File last modified ###

my $file = "a.pl";

my $last_mod_time = (stat ($file))[9];
my $timetoreadable = localtime($last_mod_time);

print "File last updated: $timetoreadable EST <br><br>\n";

### End file last modified ##







### End Execution time... As opposed to page load time

my $elapsed = tv_interval ( $t0 );

print "Execution time: $elapsed seconds <br>\n";

### Execution time end ###
