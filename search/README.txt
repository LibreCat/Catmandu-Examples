Catmandu search example
=======================

Step 1: install sofware

    $ cpanm Catmandu Catmandu::Store::Solr

Step 2: start the Solr server
-----------------------------
	
	# optionally clean the old index
	# rm -rf solr/solr/data/index
    # rm -rf solr/solr/data/spellchecker

    cd solr
    java -jar start.jar

Step 3: add data to the Solr index
----------------------------------

    $ catmandu import OAI -v --url http://biblio.ugent.be/oai to search 

Catmandu::Importer::OAI imports oai_dc metadata from any OAI provider

Step 4: start Dancer
--------------------

start Dancer directly:

    $ bin/app

or with psgi/plack (http://plackperl.org):

    $ plackup --port 3000 bin/app

and point your browser to http://localhost:3000

Commandline examples
--------------------

    $ catmandu export search --query "subject:history" to JSON
    $ catmandu export search --start 10 --total 10 to YAML


