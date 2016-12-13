package Chart::Plotly::Trace::Candlestick;
use Moose;

use Chart::Plotly::Trace::Attribute::Decreasing;
use Chart::Plotly::Trace::Attribute::Increasing;
use Chart::Plotly::Trace::Attribute::Line;


# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Candlestick

=head1 SYNOPSIS

	use HTML::Show;
	use Chart::Plotly;
	use Chart::Plotly::Trace::Candlestick;
	my $candlestick = Chart::Plotly::Trace::Candlestick->new(x => [1 .. 5], y => [1 .. 5]);
	
	HTML::Show::show(Chart::Plotly::render_full_html(data => [$candlestick]));


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#candlestick>

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

=item * close

Sets the close values.

=cut

has close => (
    is => 'rw',
    documentation => "Sets the close values.",
);

=item * decreasing


=cut

has decreasing => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Decreasing"
);

=item * high

Sets the high values.

=cut

has high => (
    is => 'rw',
    documentation => "Sets the high values.",
);

=item * increasing


=cut

has increasing => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Increasing"
);

=item * line


=cut

has line => (
    is => 'rw',
    isa => "Maybe[HashRef]|Chart::Plotly::Trace::Attribute::Line"
);

=item * low

Sets the low values.

=cut

has low => (
    is => 'rw',
    documentation => "Sets the low values.",
);

=item * open

Sets the open values.

=cut

has open => (
    is => 'rw',
    documentation => "Sets the open values.",
);

=item * text

Sets hover text elements associated with each sample point. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to this trace's sample points.

=cut

has text => (
    is => 'rw',
    isa => "Str",
    documentation => "Sets hover text elements associated with each sample point. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to this trace's sample points.",
);

=item * whiskerwidth

Sets the width of the whiskers relative to the box' width. For example, with 1, the whiskers are as wide as the box(es).

=cut

has whiskerwidth => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the width of the whiskers relative to the box' width. For example, with 1, the whiskers are as wide as the box(es).",
);

=item * x

Sets the x coordinates. If absent, linear coordinate will be generated.

=cut

has x => (
    is => 'rw',
    documentation => "Sets the x coordinates. If absent, linear coordinate will be generated.",
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
