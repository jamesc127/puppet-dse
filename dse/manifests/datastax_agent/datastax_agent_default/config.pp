# == Class: dse::datastax_agent::datastax_agent_default::config
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
class dse::datastax_agent::datastax_agent_default::config inherits dse::datastax_agent::datastax_agent_default {
  file { 'datastax-agent.default' :
    ensure  => present,
    path    => $dse::datastax_agent::datastax_agent_default::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse/datastax-agent/datastax-agent.default.erb')
  }
}
