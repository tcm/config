#!/usr/bin/perl

use strict;

my @salt = ("f4", "44", "a1", "i0", "b3");
my $random = int(rand(5)) + 1;

my $username = "user1";
my $userid  = "501";
my $pw = "geheim";


my $password = crypt($pw, $salt[$random]);
# print "$random\n";
# print "$password\n";

system ("useradd -m  -u $userid -p $password -g 100  -d /home/$username -s /bin/false $username");

system("mkdir /home/$username");
system("chown $username.users /home/$username");
system("chmod 700 /home/$username");
