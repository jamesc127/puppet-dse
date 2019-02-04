# == Class: dse::datastax_agent::datastax_agent_env::config
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
class dse::datastax_agent::datastax_agent_env::config inherits dse::datastax_agent::datastax_agent_env {
  file { 'datastax-agent-env.sh' :
    ensure  => present,
    path    => $dse::datastax_agent::datastax_agent_env::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse/datastax-agent/datastax-agent-env.sh.erb')
  }
}
