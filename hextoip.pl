############
# Convert_hextoip
# v0.1
#
# Convert 0x000000000000asasdfasf ips to 123.123.123.123
#
# Input: input.txt list of newline separated ip's in Foundstone format
# Output: output.txt list of newline separated ip's in CIDR format
#
############
use strict;
use warnings;
use Socket;

my $ver = "0.1";


#####################################################
################ - C O D E - ########################
#####################################################
my $inputfile = "";
if ( $#ARGV eq -1 ) {
	print "IP converter $ver\n";
	print "\nUsage: $0 <inputfile.txt>\nWill create/append output.txt with ip list.";
	exit;
}
if ($ARGV[0]) {
	$inputfile = $ARGV[0];
	print "Using input: $inputfile\n";
}
open(IN, "<$inputfile");
open(OUT, ">>output.txt");

while ( <IN> ) {
	chomp($_);
	my $inputip = $_;
	$inputip =~ s/0x00000000000000000000FFFF//;
	print OUT inet_ntoa( pack( "N", hex( $inputip ) ) ) . "\n";
}
close(IN); close(OUT);
