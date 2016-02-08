package Example::App::Search;

use Catmandu::Sane;
use Catmandu qw(:load store);
use Dancer qw(:syntax);

my $bag = store('search')->bag;

get '/opensearch.xml' => sub {
    content_type 'xml';
    template 'opensearch.xml', {}, {layout => 0};
};

get '/' => sub {
    if (my $qs = params->{qs}) {
        my $start = params->{start} // 0;
        my $limit = params->{limit} // 10;
        my $hits = $bag->search(query => $qs, limit => $limit, start => $start);

        return template 'hits', {
            qs    => $qs,
            start => $hits->start,
            limit => $hits->limit,
            total => $hits->total,
            hits  => $hits->hits,
        };
    }

    template 'index';
};

1;
