# NAME

Chart::Plotly - Generate html/javascript charts from perl data using javascript library plotly.js

# SYNOPSIS

    use Chart::Plotly 'show_plot';
    
    my $data = { x    => [ 1 .. 10 ],
                 mode => 'markers',
                 type => 'scatter'
    };
    $data->{'y'} = [ map { rand 10 } @{ $data->{'x'} } ];
    
    show_plot([$data]);
    
    use HTML::Show;
    use aliased 'Chart::Plotly::Trace::Scattergl';
    
    my $big_array = [ 1 .. 10000 ];
    my $scattergl = Scattergl->new( x => $big_array, y => [ map { rand 100 } @$big_array ] );
    
    HTML::Show::show( Chart::Plotly::render_full_html( data => [$scattergl] ) );

    use HTML::Show;
    use Chart::Plotly;
    use PDL;
    
    use aliased 'Chart::Plotly::Trace::Surface';
    
    my $size = 25;
    my $x    = ( xvals zeroes $size+ 1, $size + 1 ) / $size;
    my $y    = ( yvals zeroes $size+ 1, $size + 1 ) / $size;
    my $z    = 0.5 + 0.5 * ( sin( $x * 6.3 ) * sin( $y * 6.3 ) )**3;    # Bumps
    
    my $surface = Surface->new( x => $x, y => $y, z => $z );
    
    HTML::Show::show( Chart::Plotly::render_full_html( data => [$surface] ) );
    
    use PDL::Math;
    
    my $bessel_size = 50;
    my $bessel      = Surface->new(
        x => xvals($bessel_size),
        y => xvals($bessel_size),
        z => bessj0( rvals( zeroes( $bessel_size, $bessel_size ) ) / 2 )
    );
    
    HTML::Show::show( Chart::Plotly::render_full_html( data => [$bessel] ) );

# DESCRIPTION

Generate html/javascript charts from perl data using javascript library plotly.js. The result
is a file that you could see in your favourite browser.

The interface is "sub" oriented, but the API is subject to changes.

# FUNCTIONS

## render\_full\_html

### Parameters

- data:

    Data to be represented. It could be:

    - Perl data structure of the json expected by plotly.js: [http://plot.ly/javascript/reference/](http://plot.ly/javascript/reference/) (this data would be serialized to JSON)
    - Array ref of objects of type Chart::Plotly::Trace::\*
    - Anything that could be serialized to JSON with the json expected by plotly.js
    - Object that could be adapted using Chart::Plotly::Adapter::\*

## show\_plot

Opens the plot in a browser locally

### Parameters

Data to be represented. The format is the same as the parameter data in render\_full\_html

# AUTHOR

Pablo Rodríguez González

# BUGS

Please report any bugs or feature requests via github: [https://github.com/pablrod/p5-Chart-Plotly/issues](https://github.com/pablrod/p5-Chart-Plotly/issues)

# DISCLAIMER

This is an unofficial Plotly Perl module. Currently I'm not affiliated in any way with Plotly. 
But I think plotly.js is a great library and I want to use it with perl.

If you like plotly.js please consider supporting them purchasing a pro subscription: [https://plot.ly/products/cloud/](https://plot.ly/products/cloud/)

# LICENSE AND COPYRIGHT

Copyright 2016 Pablo Rodríguez González.

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
