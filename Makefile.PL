use inc::Module::Install;

RTx('RT-Extension-ActivityReports-Billing');
license('perl');
author('Tara Andrews <tla@bestpractical.com>');

# XXX: This should be reported by M::I::RTx
my ($lib_path) = $INC{'RT.pm'} =~ /^(.*)[\\\/]/;
my $local_lib_path = "$RT::LocalPath/lib";
unshift @INC, $local_lib_path, $lib_path;
requires('RT::Extension::ActivityReports' => '0.10');

&WriteAll;
