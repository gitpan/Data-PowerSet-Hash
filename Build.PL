
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::Deep::NoTest" => 0,
    "Test::More" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Power sets of hashes",
  "dist_author" => [
    "Sawyer X <xsawyerx\@cpan.org>"
  ],
  "dist_name" => "Data-PowerSet-Hash",
  "dist_version" => "0.03",
  "license" => "perl",
  "module_name" => "Data::PowerSet::Hash",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::PowerSet" => 0,
    "Exporter" => 0,
    "parent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
