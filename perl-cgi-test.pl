#!/usr/bin/env perl

##   Use the previous shbang line to use system perl

##   Use the following shbang if you have perlbrew on your system.  Change username below to your local username and your version of perl to use perlbrew in your cgi-script ... For use on linux & the BSDs... Ubuntu Linux was used to create and run this script
##   #!/home/username/perl5/perlbrew/perls/perl-5.40.1/bin/perl

use strict;
use warnings;
use diagnostics;




### Start Elapsed Execution Time
### $ cpanm Time::HiRes (to install perl module if needed)

use Time::HiRes qw( gettimeofday tv_interval nanosleep );
my $t0 = [gettimeofday];

### End part 1 of execution time.... See Below for final interval code





print "Content-Type: text/html\n\n";






### perl Version Begin ###

my $version = "$^V";

print "perl version summary...<br>";

print "Version; $version\n <br>";

print "Alt Version: $]\n <br>\n";

### perl Version End ###






### File last modified ###

my $file = "perl-cgi-test.pl";

my $last_mod_time = (stat ($file))[9];
my $timetoreadable = localtime($last_mod_time);

# local time here is EST
print "File last updated: $timetoreadable EST <br>\n";

### End file last modified ##







### Part 2 Execution Time... End Section for Elapsed Execution time...

##  Add sleep to show microseconds without exponential notation
nanosleep(100000);

my $elapsed = tv_interval ( $t0 );

print "Execution time: $elapsed seconds <br>\n";

### Execution time end ###
