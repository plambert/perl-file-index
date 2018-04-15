use utf8;
package File::Index::Schema::Result::File;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

File::Index::Schema::Result::File

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';
__PACKAGE__->load_components(qw/InflateColumn::DateTime/);

=head1 TABLE: C<files>

=cut

__PACKAGE__->table("files");

=head1 ACCESSORS

=head2 path

  data_type: 'text'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 parent

  data_type: 'integer'
  is_nullable: 0

=head2 filetype

  data_type: 'integer'
  is_nullable: 0

=head2 dev

  data_type: 'integer'
  is_nullable: 0

=head2 ino

  data_type: 'integer'
  is_nullable: 0

=head2 mode

  data_type: 'integer'
  is_nullable: 0

=head2 nlink

  data_type: 'integer'
  is_nullable: 1

=head2 uid

  data_type: 'integer'
  is_nullable: 1

=head2 gid

  data_type: 'integer'
  is_nullable: 1

=head2 size

  data_type: 'integer'
  is_nullable: 1

=head2 mtime

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "path",
  { data_type => "text", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
  "parent",
  { data_type => "integer", is_nullable => 0 },
  "filetype",
  { data_type => "integer", is_nullable => 0 },
  "dev",
  { data_type => "integer", is_nullable => 0 },
  "ino",
  { data_type => "integer", is_nullable => 0 },
  "mode",
  { data_type => "integer", is_nullable => 0 },
  "nlink",
  { data_type => "integer", is_nullable => 1 },
  "uid",
  { data_type => "integer", is_nullable => 1 },
  "gid",
  { data_type => "integer", is_nullable => 1 },
  "size",
  { data_type => "integer", is_nullable => 1 },
  "mtime",
  { data_type => "datetime", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<name_parent_unique>

=over 4

=item * L</name>

=item * L</parent>

=back

=cut

__PACKAGE__->add_unique_constraint("name_parent_unique", ["name", "parent"]);

=head2 C<path_unique>

=over 4

=item * L</path>

=back

=cut

__PACKAGE__->add_unique_constraint("path_unique", ["path"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-04-15 14:44:44
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KB564QdS3bdbATTyzaFohw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
