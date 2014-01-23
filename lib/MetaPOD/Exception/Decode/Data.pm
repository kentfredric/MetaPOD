use 5.008;    # utf8
use strict;
use warnings;
use utf8;

package MetaPOD::Exception::Decode::Data;
$MetaPOD::Exception::Decode::Data::VERSION = '0.3.6';
# ABSTRACT: Failures with decoding source data

our $AUTHORITY = 'cpan:KENTNL'; # AUTHORITY

use Moo qw( has extends );













extends 'MetaPOD::Exception';







has 'data' => ( is => ro =>, required => 1, );







has 'internal_message' => ( is => ro =>, required => 1, );

has '+message' => (
  is      => ro =>,
  lazy    => 1,
  builder => sub {
    return "While decoding:\n" . $_[0]->data . "\n Got: " . $_[0]->internal_message;
  },
);

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

MetaPOD::Exception::Decode::Data - Failures with decoding source data

=head1 VERSION

version 0.3.6

=head1 ATTRIBUTES

=head2 C<data>

The data that was being decoded when the exception occurred.

=head2 C<internal_message>

Messages given from decoder

=begin MetaPOD::JSON v1.1.0

{
    "namespace":"MetaPOD::Exception::Decode::Data",
    "interface":"class",
    "inherits":"MetaPOD::Exception"
}


=end MetaPOD::JSON

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
