package App::NutrientUtils;

use 5.010001;
use strict;
use warnings;

use Exporter 'import';
use Perinci::Sub::Gen::AccessTable qw(gen_read_table_func);
use TableData::Health::Nutrient;

# AUTHORITY
# DATE
# DIST
# VERSION

our @EXPORT_OK = qw(
                       list_nutrients
               );

our %SPEC;

my $res = gen_read_table_func(
    name => 'bpom_list_nutrients',
    summary => 'List nutrients',
    table_data => TableData::Health::Nutrient->new,
    description => <<'MARKDOWN',
MARKDOWN
    extra_props => {
        examples => [
            {
                summary => 'List all vitamins, with all details',
                src_plang => 'bash',
                src => '[[prog]] -l --category vitamin',
                test => 0,
            },
            {
                summary => 'List the English names of all minerals',
                src_plang => 'bash',
                src => q([[prog]] -l --category mineral --fields '["eng_name"]'),
                test => 0,
            },
        ],
    },
);

1;
#ABSTRACT: Utilities related to nutrients

=head1 DESCRIPTION

This distributions provides the following command-line utilities:

# INSERT_EXECS_LIST


=head1 SEE ALSO

=cut
