use strictures 1;
package Data::PowerSet::Hash;
BEGIN {
  $Data::PowerSet::Hash::VERSION = '0.02';
}
# ABSTRACT: Power sets of hashes

use parent 'Exporter';
use Data::PowerSet 'powerset';

our @EXPORT_OK = 'hash_powerset';

sub hash_powerset {
    my %hash = @_;
    my @pset = ();
    my $pset = powerset( keys %hash );

    foreach my $combo ( @{$pset} ) {
        my %tmp_hash = ();
        foreach my $key ( @{$combo} ) {
            $tmp_hash{$key} = $hash{$key};
        }

        push @pset, \%tmp_hash;
    }

    return @pset;
}

1;



=pod

=head1 NAME

Data::PowerSet::Hash - Power sets of hashes

=head1 VERSION

version 0.02

=head1 DESCRIPTION

This provides you with a power set (basically all combinational iterations) for
your hashes. This only does it for hashes, if you want them done for arrays, I
suggest using L<Data::PowerSet>. Please view the I<SEE ALSO> section below.

=head1 SUBROUTINES/METHODS

=head2 hash_powerset

Create a powerset from hash keys.

    use Data::PowerSet::Hash 'hash_powerset';

    my @pset = hash_powerset(
        husband => 'Homer Simpson',
        wife    => 'Marge Simpson',
    );

    # @pset = (
    #     {
    #         husband => 'Homer Simpson',
    #         wife    => 'Marge Simpson',
    #     },
    #     { husband => 'Homer Simpson' },
    #     { wife    => 'Marge Simpson' },
    #     {},
    # )

=head2 EXPORT

=head3 hash_powerset(%hash)

See documentation for it above.

=head1 SEE ALSO

For arrays, you should check out L<Data::PowerSet> or L<List::PowerSet>.

=head1 AUTHOR

  Sawyer X <xsawyerx@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Sawyer X.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__
