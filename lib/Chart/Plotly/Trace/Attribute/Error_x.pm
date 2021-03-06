package Chart::Plotly::Trace::Attribute::Error_x;
use Moose;



# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Attribute::Error_x

=head1 SYNOPSIS

	use HTML::Show;
	use Chart::Plotly;
	use Chart::Plotly::Trace::Attribute::Error_x;
	my $error_x = Chart::Plotly::Trace::Attribute::Error_x->new(x => [1 .. 5], y => [1 .. 5]);
	
	HTML::Show::show(Chart::Plotly::render_full_html(data => [$error_x]));


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#error_x>

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

=item * array

Sets the data corresponding the length of each error bar. Values are plotted relative to the underlying data.

=cut

has array => (
    is => 'rw',
    documentation => "Sets the data corresponding the length of each error bar. Values are plotted relative to the underlying data.",
);

=item * arrayminus

Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.

=cut

has arrayminus => (
    is => 'rw',
    documentation => "Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.",
);

=item * color

Sets the stoke color of the error bars.

=cut

has color => (
    is => 'rw',
    documentation => "Sets the stoke color of the error bars.",
);

=item * copy_ystyle


=cut

has copy_ystyle => (
    is => 'rw',
    isa => "Bool",
);

=item * copy_zstyle


=cut

has copy_zstyle => (
    is => 'rw',
    isa => "Bool",
);

=item * symmetric

Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.

=cut

has symmetric => (
    is => 'rw',
    isa => "Bool",
    documentation => "Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.",
);

=item * thickness

Sets the thickness (in px) of the error bars.

=cut

has thickness => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the thickness (in px) of the error bars.",
);

=item * traceref


=cut

has traceref => (
    is => 'rw',
);

=item * tracerefminus


=cut

has tracerefminus => (
    is => 'rw',
);

=item * type

Determines the rule used to generate the error bars. If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *array*, the bar lengths are set with data set `array`.

=cut

has type => (
    is => 'rw',
    documentation => "Determines the rule used to generate the error bars. If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *array*, the bar lengths are set with data set `array`.",
);

=item * value

Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.

=cut

has value => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.",
);

=item * valueminus

Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars

=cut

has valueminus => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars",
);

=item * visible

Determines whether or not this set of error bars is visible.

=cut

has visible => (
    is => 'rw',
    isa => "Bool",
    documentation => "Determines whether or not this set of error bars is visible.",
);

=item * width

Sets the width (in px) of the cross-bar at both ends of the error bars.

=cut

has width => (
    is => 'rw',
    isa => "Num",
    documentation => "Sets the width (in px) of the cross-bar at both ends of the error bars.",
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


__PACKAGE__->meta->make_immutable();
1;
