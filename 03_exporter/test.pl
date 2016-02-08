#!/usr/bin/env perl
$|++;

use Cwd;
use feature qw(state);
use Catmandu;

# Exporters are LibreCat classes to export data from an application.
# There are exporters for JSON, YAML, CSV and many more.

# As example, lets create some data and export into YAML.
my $data = [
	{ first => 'Charly' , last => 'Parker' , job => 'Artist' } ,
 	{ first => 'Albert' , last => 'Einstein' , job => 'Physicist' } ,
 	{ first => 'Pablo' , last => 'Picasso' , job => 'Painter' }
];

my $exporter = Catmandu->exporter('YAML');
print "[add_many (using array)]\n";
$exporter->add_many($data);

print "[add_many (using a generator)]\n";
$exporter->add_many(\&generator);

print "[add_many (using an iterator)]\n";
$exporter->add_many(Catmandu->importer('Mock',size => 5));

# It is also possible to export the data one by one
print "[add (using one object)]\n";
$exporter->add($data->[0]);
$exporter->add($data->[1]);
$exporter->add($data->[2]);

# The count method can be used to find out how many objects were exported
# using the current exporter
printf "Exported %d objects thus far\n" , $exporter->count;

# One very nice exporter is the Template. You can give it a Template
# Toolkit template and it will generate any output you like.
# Rem: the template needs to have an absolute path 
my $pwd = getcwd();
my $exporter = Catmandu->exporter('Template',template => $pwd . '/example.tt');
$exporter->add_many($data);

sub generator {
   state $n = 5;
   return { n => $n-- } if $n > 0;
   return;
}
