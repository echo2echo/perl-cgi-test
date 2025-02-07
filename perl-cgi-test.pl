#!/usr/bin/env perl

##   Use the previous shbang line to use system perl

##   Use the following shbang if you have perlbrew on your system.  Change username below to your local username and your version of perl to use perlbrew in your cgi-script ... For use on linux.. Ubuntu Linux used by me
##   #!/home/user/perl5/perlbrew/perls/perl-5.40.1/bin/perl

use strict;
use warnings;
use diagnostics;




### Start Elapsed Execution Time

use Time::HiRes qw( gettimeofday tv_interval nanosleep );

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

my $file = "perl-cgi-test.pl";

my $last_mod_time = (stat ($file))[9];
my $timetoreadable = localtime($last_mod_time);

print "File last updated: $timetoreadable EST <br><br>\n";

### End file last modified ##







### End Section Execution time... As opposed to page load time

##  Add sleep to show microseconds without exponential notation
nanosleep(1000000);

my $elapsed = tv_interval ( $t0 );

print "Execution time: $elapsed seconds <br>\n";

### Execution time end ###
