# == Class: datastax_agent::datastax_agent_env::config
#
# Configures the DataStax agent's startup parameters
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class datastax_agent::datastax_agent_env::config inherits datastax_agent::datastax_agent_env {
  file { 'datastax-agent-env.sh' :
    ensure  => present,
    path    => $datastax_agent::datastax_agent_env::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('datastax_agent/datastax-agent-env.sh.erb')
  }
}
