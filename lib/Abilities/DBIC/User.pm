package Abilities::DBIC::User;

use strict;
use warnings;
use base qw/DBIx::Class::Core Abilities/;

__PACKAGE__->has_many(map_user_role => 'UserRole', 'user_id');
__PACKAGE__->many_to_many(roles => 'map_user_role', 'role');
__PACKAGE__->has_many(map_user_action => 'UserAction', 'user_id');
__PACKAGE__->many_to_many(actions => 'map_user_action', 'action');

=head1 NAME

Abilities::DBIC::User - Base class for DBIx::Class user schemas.

=head1 AUTHOR

Ido Perlmuter, C<< <ido at ido50.net> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-abilities at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Abilities>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Abilities::DBIC::User

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Abilities>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Abilities>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Abilities>

=item * Search CPAN

L<http://search.cpan.org/dist/Abilities/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright 2010 Ido Perlmuter.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1;
