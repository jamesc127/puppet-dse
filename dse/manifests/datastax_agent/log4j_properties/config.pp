# == Class: dse::datastax_agent::log4j_properties::config
#
# Configures the DataStax agent's logging
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::datastax_agent::log4j_properties::config inherits dse::datastax_agent::log4j_properties {
  file { 'log4j.properties' :
    ensure  => present,
    path    => $dse::datastax_agent::log4j_properties::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse/datastax-agent/log4j.properties.erb')
  }
}
