#!/usr/bin/perl
##! @description: convert graphviz's dot file to ASCII graph.
##! @version: 1
##! @author: crackcell <tanmenglong@gmail.com>
##! @date:   Wed Dec 24 12:20:19 2014

use strict;
use Getopt::Std;
use Graph::Easy::Parser::Graphviz;

#--------------- global variable --------------


#------------------ function ------------------

sub usage() {
    print("dot2ascii.pl\n");
    print("Usage: -h -f -i\n");
    print("  -h                      : show help message\n");
    print("  -f dot_file             : specify dot file\n");
    print("  -i indent               : specify indent\n");
}

#------------------- main -------------------

my %opts;

$opts{"i"} = "";
$opts{"f"} = "";
getopts("hi:f:", \%opts);

if (exists $opts{"h"} || length($opts{"f"}) == 0) {
    usage();
    exit 0;
}

my $parser = Graph::Easy::Parser::Graphviz->new();
my $graph = $parser->from_file($opts{"f"});

my @lines = split(/\n/, $graph->as_ascii());
foreach my $line (@lines) {
    print $opts{"i"}, $line, "\n";
}
