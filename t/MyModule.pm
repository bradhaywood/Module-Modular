package MyModule;

use lib 't';
use Module::Modular with => 'Accessors';

our $PluginStash = { bees => 'knees' };
load_plugins 'Foo';

sub new {
    return bless {}, $_[0];
}

sub var_from_plugin {
    my $self = shift;
    return $self->plugin('Foo')->stash('bees');
}

1;
