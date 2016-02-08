#!/usr/bin/env perl
#

use Catmandu;
use Data::Dumper;

my $fixer = Catmandu->fixer(['marc.fix']);
my $it    = Catmandu->importer('MARC',file => 'marc.txt', type => 'ALEPHSEQ');

$fixer->fix($it)->each(sub {
   print Dumper($_[0]);
});
