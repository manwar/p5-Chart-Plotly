package Chart::Plotly::Trace::Mesh3d;
use Moose;

# VERSION

=encoding utf-8

=head1 NAME 

Chart::Plotly::Trace::Mesh3d

=head1 SYNOPSIS

	use HTML::Show;
	use Chart::Plotly;
	use Chart::Plotly::Trace::Mesh3d;
	my $mesh3d = Chart::Plotly::Trace::Mesh3d->new(x => [1 .. 5], y => [1 .. 5]);
	
	HTML::Show::show(Chart::Plotly::render_full_html(data => [$mesh3d]));


=head1 DESCRIPTION

This file has been autogenerated from the official plotly.js source.

If you like Plotly, please support them: L<https://plot.ly/> 
Open source announcement: L<https://plot.ly/javascript/open-source-announcement/>

Full reference: L<https://plot.ly/javascript/reference/#mesh3d>

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
	$hash{type} = $self->type();
	return \%hash;
}

=head2 type

Trace type.

=cut

sub type {
	my @components = split(/::/, __PACKAGE__);
	return lc($components[-1]);
}

=head1 ATTRIBUTES

=over

=cut

=item * opacity

Sets the opacity of the surface.

=cut

has opacity => (
    is => 'rw',
    documentation => "Sets the opacity of the surface.",
);

=item * lightposition


=cut

has lightposition => (
    is => 'rw',
);

=item * colorscale

Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)', [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in z space, use zmin and zmax

=cut

has colorscale => (
    is => 'rw',
    documentation => "Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)', [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in z space, use zmin and zmax",
);

=item * y

Sets the Y coordinates of the vertices. The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the nth vertex.

=cut

has y => (
    is => 'rw',
    documentation => "Sets the Y coordinates of the vertices. The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the nth vertex.",
);

=item * showscale

Determines whether or not a colorbar is displayed for this trace.

=cut

has showscale => (
    is => 'rw',
    documentation => "Determines whether or not a colorbar is displayed for this trace.",
);

=item * flatshading

Determines whether or not normal smoothing is applied to the meshes, creating meshes with an angular, low-poly look via flat reflections.

=cut

has flatshading => (
    is => 'rw',
    documentation => "Determines whether or not normal smoothing is applied to the meshes, creating meshes with an angular, low-poly look via flat reflections.",
);

=item * j

A vector of vertex indices, i.e. integer values between 0 and the length of the vertex vectors, representing the *second* vertex of a triangle. For example, `{i[m], j[m], k[m]}`  together represent face m (triangle m) in the mesh, where `j[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays. Therefore, each element in `j` represents a point in space, which is the second vertex of a triangle.

=cut

has j => (
    is => 'rw',
    documentation => "A vector of vertex indices, i.e. integer values between 0 and the length of the vertex vectors, representing the *second* vertex of a triangle. For example, `{i[m], j[m], k[m]}`  together represent face m (triangle m) in the mesh, where `j[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays. Therefore, each element in `j` represents a point in space, which is the second vertex of a triangle.",
);

=item * x

Sets the X coordinates of the vertices. The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the nth vertex.

=cut

has x => (
    is => 'rw',
    documentation => "Sets the X coordinates of the vertices. The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the nth vertex.",
);

=item * alphahull

Determines how the mesh surface triangles are derived from the set of vertices (points) represented by the `x`, `y` and `z` arrays, if the `i`, `j`, `k` arrays are not supplied. For general use of `mesh3d` it is preferred that `i`, `j`, `k` are supplied. If *-1*, Delaunay triangulation is used, which is mainly suitable if the mesh is a single, more or less layer surface that is perpendicular to `delaunayaxis`. In case the `delaunayaxis` intersects the mesh surface at more than one point it will result triangles that are very long in the dimension of `delaunayaxis`. If *>0*, the alpha-shape algorithm is used. In this case, the positive `alphahull` value signals the use of the alpha-shape algorithm, _and_ its value acts as the parameter for the mesh fitting. If *0*,  the convex-hull algorithm is used. It is suitable for convex bodies or if the intention is to enclose the `x`, `y` and `z` point set into a convex hull.

=cut

has alphahull => (
    is => 'rw',
    documentation => "Determines how the mesh surface triangles are derived from the set of vertices (points) represented by the `x`, `y` and `z` arrays, if the `i`, `j`, `k` arrays are not supplied. For general use of `mesh3d` it is preferred that `i`, `j`, `k` are supplied. If *-1*, Delaunay triangulation is used, which is mainly suitable if the mesh is a single, more or less layer surface that is perpendicular to `delaunayaxis`. In case the `delaunayaxis` intersects the mesh surface at more than one point it will result triangles that are very long in the dimension of `delaunayaxis`. If *>0*, the alpha-shape algorithm is used. In this case, the positive `alphahull` value signals the use of the alpha-shape algorithm, _and_ its value acts as the parameter for the mesh fitting. If *0*,  the convex-hull algorithm is used. It is suitable for convex bodies or if the intention is to enclose the `x`, `y` and `z` point set into a convex hull.",
);

=item * facecolor

Sets the color of each face Overrides *color* and *vertexcolor*.

=cut

has facecolor => (
    is => 'rw',
    documentation => "Sets the color of each face Overrides *color* and *vertexcolor*.",
);

=item * color

Sets the color of the whole mesh

=cut

has color => (
    is => 'rw',
    documentation => "Sets the color of the whole mesh",
);

=item * vertexcolor

Sets the color of each vertex Overrides *color*.

=cut

has vertexcolor => (
    is => 'rw',
    documentation => "Sets the color of each vertex Overrides *color*.",
);

=item * k

A vector of vertex indices, i.e. integer values between 0 and the length of the vertex vectors, representing the *third* vertex of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the mesh, where `k[m] = n` points to the triplet  `{x[n], y[n], z[n]}` in the vertex arrays. Therefore, each element in `k` represents a point in space, which is the third vertex of a triangle.

=cut

has k => (
    is => 'rw',
    documentation => "A vector of vertex indices, i.e. integer values between 0 and the length of the vertex vectors, representing the *third* vertex of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the mesh, where `k[m] = n` points to the triplet  `{x[n], y[n], z[n]}` in the vertex arrays. Therefore, each element in `k` represents a point in space, which is the third vertex of a triangle.",
);

=item * z

Sets the Z coordinates of the vertices. The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the nth vertex.

=cut

has z => (
    is => 'rw',
    documentation => "Sets the Z coordinates of the vertices. The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the nth vertex.",
);

=item * lighting


=cut

has lighting => (
    is => 'rw',
);

=item * _nestedModules


=cut

has _nestedModules => (
    is => 'rw',
);

=item * i

A vector of vertex indices, i.e. integer values between 0 and the length of the vertex vectors, representing the *first* vertex of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the mesh, where `i[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays. Therefore, each element in `i` represents a point in space, which is the first vertex of a triangle.

=cut

has i => (
    is => 'rw',
    documentation => "A vector of vertex indices, i.e. integer values between 0 and the length of the vertex vectors, representing the *first* vertex of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the mesh, where `i[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays. Therefore, each element in `i` represents a point in space, which is the first vertex of a triangle.",
);

=item * contour


=cut

has contour => (
    is => 'rw',
);

=item * delaunayaxis

Sets the Delaunay axis, which is the axis that is perpendicular to the surface of the Delaunay triangulation. It has an effect if `i`, `j`, `k` are not provided and `alphahull` is set to indicate Delaunay triangulation.

=cut

has delaunayaxis => (
    is => 'rw',
    documentation => "Sets the Delaunay axis, which is the axis that is perpendicular to the surface of the Delaunay triangulation. It has an effect if `i`, `j`, `k` are not provided and `alphahull` is set to indicate Delaunay triangulation.",
);

=item * reversescale

Reverses the colorscale.

=cut

has reversescale => (
    is => 'rw',
    documentation => "Reverses the colorscale.",
);

=item * intensity

Sets the vertex intensity values, used for plotting fields on meshes

=cut

has intensity => (
    is => 'rw',
    documentation => "Sets the vertex intensity values, used for plotting fields on meshes",
);

=pod

=back

=cut


__PACKAGE__->meta->make_immutable();
1;