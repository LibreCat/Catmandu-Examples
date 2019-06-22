#!/usr/bin/env perl
#
# An example how to use the DBI interface
#
use Catmandu;

my $store = Catmandu->store('DBI',data_source => 'DBI:mysql:database=test');

my $exporter = Catmandu->exporter('YAML');

$store->bag->add({
   name => 'Patrick'
});

$store->bag->add({
   name => 'Nicolas'
});

$exporter->add_many($store->bag);

$store->bag->delete_all;
