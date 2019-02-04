# == Class: datastax_agent::datastax_agent_default::config
#
# Provides environment variable overrides for the DataStax agent
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class datastax_agent::datastax_agent_default::config inherits datastax_agent::datastax_agent_default {
  file { 'datastax-agent.default' :
    ensure  => present,
    path    => $datastax_agent::datastax_agent_default::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('datastax_agent/datastax-agent.default.erb')
  }
}
