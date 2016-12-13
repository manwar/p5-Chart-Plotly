package Chart::Plotly::Trace::Histogram;
use Moose;

use Chart::Plotly::Trace::Attribute::Error_x;
use Chart::Plotly::Trace::Attribute::Error_y;
use Chart::Plotly::Trace::Attribute::Marker;
use Chart::Plotly::Trace::Attribute::Xbins;
use Chart::Plotly::Trace::Attribute::Ybins;


# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Histogram

=head1 SYNOPSIS

	use HTML::Show;
	use Chart::Plotly;
	use Chart::Plotly::Trace::Histogram;
	my $histogram = Chart::Plotly::Trace::Histogram->new(x => [1 .. 5], y => [1 .. 5]);
	
	HTML::Show::show(Chart::Plotly::render_full_html(data => [$histogram]));


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#histogram>

=head1 DISCLAIMER

This is an unofficial Plotly Perl module. Currently I'm not affiliated in any way with Plotly. 
But I think plotly.js is a great library and I want to use it with perl.

=head1 METHODS

=cut

=head2 TO_JSON

Serialize the trace to JSON. This method should be called only by L<JSON> serializer.

=cut

sub TO_JSON {
	my $self = shift; 
	my %hash = %$self; 
	if ($self->can('type') && (!defined $hash{'type'})) {
		$hash{type} = $self->type();
	}
	return \%hash;
}



=head1 ATTRIBUTES

=over

=cut

=item * autobinx

Determines whether or not the x axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in xbins.

=cut

has autobinx => (
    is => 'rw',
    isa => "Bool",
    documentation => "Determines whether or not the x axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in xbins.",
);

=item * autobiny

Determines whether or not the y axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in ybins.

=cut

has autobiny => (
    is => 'rw',
    isa => "Bool",
    documentation => "Determines whether or not the y axis bin attributes are picked by an algorithm. Note that this should be set to false if you want to manually set the number of bins using the attributes in ybins.",
);

=item * error_x


=cut

has error_x => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Error_x"
);

=item * error_y


=cut

has error_y => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Error_y"
);

=item * histfunc

Specifies the binning function used for this histogram trace. If *count*, the histogram values are computed by counting the number of values lying inside each bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the average, the minimum or the maximum of the values lying inside each bin respectively.

=cut

has histfunc => (
    is => 'rw',
    documentation => "Specifies the binning function used for this histogram trace. If *count*, the histogram values are computed by counting the number of values lying inside each bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the average, the minimum or the maximum of the values lying inside each bin respectively.",
);

=item * histnorm

Specifies the type of normalization used for this histogram trace. If **, the span of each bar corresponds to the number of occurrences (i.e. the number of data points lying inside the bins). If *percent*, the span of each bar corresponds to the percentage of occurrences with respect to the total number of sample points (here, the sum of all bin area equals 100%). If *density*, the span of each bar corresponds to the number of occurrences in a bin divided by the size of the bin interval (here, the sum of all bin area equals the total number of sample points). If *probability density*, the span of each bar corresponds to the probability that an event will fall into the corresponding bin (here, the sum of all bin area equals 1).

=cut

has histnorm => (
    is => 'rw',
    documentation => "Specifies the type of normalization used for this histogram trace. If **, the span of each bar corresponds to the number of occurrences (i.e. the number of data points lying inside the bins). If *percent*, the span of each bar corresponds to the percentage of occurrences with respect to the total number of sample points (here, the sum of all bin area equals 100%). If *density*, the span of each bar corresponds to the number of occurrences in a bin divided by the size of the bin interval (here, the sum of all bin area equals the total number of sample points). If *probability density*, the span of each bar corresponds to the probability that an event will fall into the corresponding bin (here, the sum of all bin area equals 1).",
);

=item * marker


=cut

has marker => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Marker"
);

=item * nbinsx

Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.

=cut

has nbinsx => (
    is => 'rw',
    documentation => "Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.",
);

=item * nbinsy

Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.

=cut

has nbinsy => (
    is => 'rw',
    documentation => "Specifies the maximum number of desired bins. This value will be used in an algorithm that will decide the optimal bin size such that the histogram best visualizes the distribution of the data.",
);

=item * orientation

Sets the orientation of the bars. With *v* (*h*), the value of the each bar spans along the vertical (horizontal).

=cut

has orientation => (
    is => 'rw',
    documentation => "Sets the orientation of the bars. With *v* (*h*), the value of the each bar spans along the vertical (horizontal).",
);

=item * text

Sets text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates.

=cut

has text => (
    is => 'rw',
    isa => "Str",
    documentation => "Sets text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates.",
);

=item * x

Sets the sample data to be binned on the x axis.

=cut

has x => (
    is => 'rw',
    documentation => "Sets the sample data to be binned on the x axis.",
);

=item * xbins


=cut

has xbins => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Xbins"
);

=item * y

Sets the sample data to be binned on the y axis.

=cut

has y => (
    is => 'rw',
    documentation => "Sets the sample data to be binned on the y axis.",
);

=item * ybins


=cut

has ybins => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Ybins"
);

=item * name

Sets the trace name

=cut

has name => (
    is => 'rw',
    isa => "Str",
    documentation => "Sets the trace name",
);

=pod

=back

=cut


=head2 type

Trace type.

=cut

sub type {
	my @components = split(/::/, __PACKAGE__);
	return lc($components[-1]);
}


__PACKAGE__->meta->make_immutable();
1;
