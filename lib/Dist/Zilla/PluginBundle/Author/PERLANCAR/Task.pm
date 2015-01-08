package Dist::Zilla::PluginBundle::Author::PERLANCAR::Task;

use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

our $VERSION = '0.29'; # VERSION

use Dist::Zilla::PluginBundle::Filter;

sub configure {
    my $self = shift;

    $self->add_bundle(Filter => {
        -bundle => '@Author::PERLANCAR',
        -remove => [qw/PodCoverageTests PodSyntaxTests PodWeaver/],
    });

    $self->add_plugins(
        'TaskWeaver',
    );
}

__PACKAGE__->meta->make_immutable;
no Moose;
1;
# ABSTRACT: Dist::Zilla like PERLANCAR when you build your task dists

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::PluginBundle::Author::PERLANCAR::Task - Dist::Zilla like PERLANCAR when you build your task dists

=head1 VERSION

This document describes version 0.29 of Dist::Zilla::PluginBundle::Author::PERLANCAR::Task (from Perl distribution Dist-Zilla-PluginBundle-Author-PERLANCAR), released on 2014-12-13.

=head1 SYNOPSIS

 # dist.ini
 [@Author::PERLANCAR::Task]

is equivalent to:

 [@Filter]
 bundle=@Author::PERLANCAR
 remove=PodCoverageTests
 remove=PodSyntaxTests
 remove=PodWeaver

 [TaskWeaver]

=head1 DESCRIPTION

=for Pod::Coverage ^(configure)$

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Dist-Zilla-PluginBundle-Author-PERLANCAR>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-Dist-Zilla-PluginBundle-Author-PERLANCAR>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Dist-Zilla-PluginBundle-Author-PERLANCAR>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
