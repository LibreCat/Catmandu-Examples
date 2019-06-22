#!/usr/bin/env perl
$|++;

use Catmandu;
use Data::Dumper;

# Importers are Catmandu classes to read data into an application.
# There are importers for JSON, YAML, CSV, Excel files but also
# Atom and OAI-PMH endpoints on the Internet.

# As example, lets read in a YAML file containing an array of values.
# We use the 'each' function to loop through all items
my $importer = Catmandu->importer('YAML',file => "./test.yaml");

my $count = $importer->each(sub {
        my $obj = shift;
        print Dumper($obj);
});

print "Read: $count YAML items\n";

# The sample example can also be done for a JSON file...
my $importer = Catmandu->importer('JSON',file => "./test.json");

my $count = $importer->each(sub {
        my $obj = shift;
        print Dumper($obj);
});

print "Read: $count JSON items\n";

# And for CSV files...
my $importer = Catmandu->importer('CSV',file => "./test.csv");

my $count = $importer->each(sub {
        my $obj = shift;
        print Dumper($obj);
});

print "Read: $count CSV items\n";

# And MARC...
my $importer = Catmandu->importer('MARC',file => "./test.xml", type => 'XML');

my $count = $importer->each(sub {
        my $obj = shift;
        print Dumper($obj);
});

print "Read: $count MARC items\n";

# We can even import data from OAI-PMH servers...
my $importer = Catmandu->importer('OAI',url => 'http://biblio.ugent.be/oai');

my $count = $importer->take(10)->each(sub {
        my $obj = shift;
        print Dumper($obj);
});

print "Read sample of $count OAI items\n";
