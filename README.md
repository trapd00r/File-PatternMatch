[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=65SFZJ25PSKG8&currency_code=SEK&source=url) - Every tiny cent helps a lot!

# NAME

File::PatternMatch - parse media information from filenames

# SYNOPSIS

    use File::PatternMatch;

    my @files = glob("$ENV{HOME}/music/*");

    my $plain = patternmatch(@files);

    my $extended_colors = patternmatch(256, @files);


![rel](/extra/rel.png)

# DESCRIPTION

**File::PatternMatch** takes a list of filenames and tries to parse relevant
information from them. If a filename contains the string 'S01E01' we can safely
assume it's a new TV show, the first episode from the first season, and thus we
label it 'New Show'.

There are filters for various music genres, tv shows and music videos.

The labels can be formatted in three ways (output formats):

## plaintext

Raw, plain text.

## colored

Colored using extended escape sequences (see [Term::ExtendedColor](https://metacpan.org/pod/Term::ExtendedColor)).

## dzen2

Formatted using the [dzen2(1)](http://man.he.net/man1/dzen2) notation.

# EXPORTS

## patternmatch()

Parameters: $output\_format, @files

Returns:    \\%results

**patternmatch()** takes a list of filenames and tries to match them aginst
specific patterns. The result might look like:

    # Plain text
    2 => {
      'Prison.Break.S01E01-FOOBAR'  => 'New Show',
    },
    42 => {
      'Laleh-Prinsessor-FOOBAZ'     => 'Pop/Rock',
    },

    # Using extended color escape sequences
    2 => {
      'Prison.Break.S01E01-FOOBAR'  => "\e[38;5;160mNew Show\e[0m",
    },

    # Using dzen2 format
    2 => {
      'Prison.Break.S01E01-FOOBAR'  => '^fg(#ff0000)New Show^fg()',
    },

# SEE ALSO

[https://github.com/trapd00r/rel](https://github.com/trapd00r/rel)

# AUTHOR

    Magnus Woldrich
    CPAN ID: WOLDRICH
    m@japh.se
    http://japh.se

# REPORTING BUGS

Report bugs and/or feature requests:

[https://rt.cpan.org](https://rt.cpan.org)

[https://github.com/trapd00r/Foo-Bar/issues](https://github.com/trapd00r/Foo-Bar/issues)

[m@japh.se](https://metacpan.org/pod/m@japh.se)

# COPYRIGHT

Copyright 2011, 2018- Magnus Woldrich <m@japh.se>. This program is free
software; you may redistribute it and/or modify it under the same terms as
Perl itself.
