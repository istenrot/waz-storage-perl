#!perl -w

use WindowsAzure::Storage;

die "Usage: deleteblob.pl <account> <key> <full/path/to/blob>" unless @ARGV == 3;
my ($account, $key, $path, $filename) = @ARGV;

my $res = WindowsAzure::Storage::delete($account, $key, $path);
die "ERROR:\n" . $res->as_string unless $res->code == 202;
