README for perl-cgi-test.pl

This perl script helps in testing a cgi-bin installation and has instructions to use system perl as well as perlbrew perls.  The script lists the perl version being used, the execution time and the file last modified date and time

This perl cgi-bin script works as a cgi test file and works with your system perl and has an example for how to use perlbrew perls too.  Basically change the shbang to use perlbrew perls.

To use perlbrew with a linux perl cgi-bin script change the shbang to something like the following...    
#!/home/username/perl5/perlbrew/perls/perl-5.40.1/bin/perl

This file, perl-cgi-test.pl, was created and runs on Ubuntu Linux. It should be mostly portable using different versions of Linux and perl. The BSDs too.

The script uses two different perl version methods.

The script also prints apache web server version, filename, execution time and when the file was last updated 

Use code blocks if useful in your own scripts.

Demo of script rendering here...
[ https://joelrader.net/cgi-bin/github/perl-cgi-test.pl ]
