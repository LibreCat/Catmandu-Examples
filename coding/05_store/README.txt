Catmandu fix example
=========================

Step 1: Install the required libraries

     $ cpanm Catmandu Catmandu::DBI DBD::mysql Catmandu::Store::MongoDB Catmandu::Store::Solr

Step 2: Prepare the MySQL database

	 $ msql -u root -p
	 mysql> create user 'hochsten'@'localhost'; (where hochsten is your login)
	 mysql> grant all on test.* to 'hochsten'@'localhost';
	 mysql> flush privileges;

Step 3: Execute the Perl script

     $ perl dbi.pl
     $ perl mongodb.pl
