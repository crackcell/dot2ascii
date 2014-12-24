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

sub usage {
    print("dot2ascii.pl\n");
    print("Usage: [-h] dot_file\n");
    print("  -h                   : show help message\n");
}

#------------------- main -------------------

my %opts;

#$opts{"f"} = "";
getopts("h", \%opts);

if (exists $opts{"h"} || scalar @ARGV != 1) {
    usage();
    exit 0;
}

my $parser = Graph::Easy::Parser::Graphviz->new();
my $graph = $parser->from_file($ARGV[0]);

print $graph->as_ascii();
