package Net::XMPP2::Namespaces;
use warnings;
use strict;
require Exporter;
our @EXPORT_OK = qw/xmpp_ns set_xmpp_ns_alias/;
our @ISA = qw/Exporter/;

our %NAMESPACES = (
   client  => 'jabber:client',
   stream  => 'http://etherx.jabber.org/streams',
   streams => 'urn:ietf:params:xml:ns:xmpp-streams',
   stanzas => 'urn:ietf:params:xml:ns:xmpp-stanzas',
   sasl    => 'urn:ietf:params:xml:ns:xmpp-sasl',
   bind    => 'urn:ietf:params:xml:ns:xmpp-bind',
   tls     => 'urn:ietf:params:xml:ns:xmpp-tls',
   roster  => 'jabber:iq:roster',
   version => 'jabber:iq:version',
   session => 'urn:ietf:params:xml:ns:xmpp-session',
   xml     => 'http://www.w3.org/XML/1998/namespace',
);

=head1 NAME

Net::XMPP2::Namespaces - A XMPP namespace collection and aliasing class

=head1 SYNOPSIS

   use Net::XMPP2::Namespaces qw/xmpp_ns set_xmpp_ns_alias/;

   set_xmpp_ns_alias (stanzas => 'urn:ietf:params:xml:ns:xmpp-stanzas');
   $node->find_all ($p, [xmpp_ns ('stanzas'), 'iq']);

=head1 DESCRIPTION

This module represents a simple namespaces aliasing mechanism to ease handling
of namespaces when traversing Net::XMPP2::Node objects and writing XML
with Net::XMPP2::Writer.

=head1 XMPP NAMESPACES

There are already some aliases defined for the XMPP XML namespaces
which make handling of namepsaces a bit easier:

   stream  => http://etherx.jabber.org/streams
   xml     => http://www.w3.org/XML/1998/namespace

   streams => urn:ietf:params:xml:ns:xmpp-streams
   session => urn:ietf:params:xml:ns:xmpp-session
   stanzas => urn:ietf:params:xml:ns:xmpp-stanzas
   sasl    => urn:ietf:params:xml:ns:xmpp-sasl
   bind    => urn:ietf:params:xml:ns:xmpp-bind
   tls     => urn:ietf:params:xml:ns:xmpp-tls

   client  => jabber:client
   roster  => jabber:iq:roster
   version => jabber:iq:version

=head1 FUNCTIONS

=head2 xmpp_ns ($alias)

Returns am uri for the registered C<$alias> or undef if none exists.

=cut

sub xmpp_ns { return $NAMESPACES{$_[0]} }

=head2 set_xmpp_ns_alias ($alias, $namespace_uri)

Sets an C<$alias> for the C<$namespace_uri>.

=cut

sub set_xmpp_ns_alias { return $NAMESPACES{$_[0]} }

=head1 AUTHOR

Robin Redeker, C<< <elmex at ta-sa.org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-net-xmpp2 at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Net-XMPP2>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Net::XMPP2

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Net-XMPP2>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Net-XMPP2>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Net-XMPP2>

=item * Search CPAN

L<http://search.cpan.org/dist/Net-XMPP2>

=back

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2007 Robin Redeker, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of Net::XMPP2