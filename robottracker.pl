#!/usr/bin/perl

use LWP::Simple;
use LWP::UserAgent;

if (@ARGV) {
    $url = $ARGV[0];
} else {
    print "Please give the URL as parameter. For example: perl $0 www.casareal.es \n";
    exit;
}

if ($url !~ /^http:\/\// ) { 
	$url = "http://" . $url; 
}

if ($url !~ /\/$/ ) { 
	$url = $url . "/"; 
}

my $url_rb = $url . "robots.txt";

my $content = get $url_rb;
die "Couldn't get robots.txt from $url" unless defined $content;

my @robot = split(/\n/m, $content);
my $command = "";
my $disallow = "";
my $var = "";
@urlsDisallowed = ();

foreach $name (@robot) {
	$line = $name . "\n";
	$var = $line =~ qr/\/(\w+)(\S+)\//;
	$command = $`;
	$disallow = $&;

	if ($command eq "Disallow: ") {
		push(@urlsDisallowed, $disallow);
	}
}

my $ua = LWP::UserAgent->new;
print "URLs disallowed from: " . $url . "\n";

foreach $urlDisallowed (@urlsDisallowed) {
	
	if ($urlDisallowed =~ /^\//) { 
		$urlDisallowed = substr($urlDisallowed, 1);
	}

	$urlName = $url . $urlDisallowed;
	$req = HTTP::Request->new(GET => $urlName );
	$res = $ua->request($req);

	print $urlName . "\t" . $res->status_line . "\n";  	
}