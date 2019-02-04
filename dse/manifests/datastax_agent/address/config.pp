# == Class: dse::datastax_agent::address::config
#
# Configures the DataStax agent
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::datastax_agent::address::config inherits dse::datastax_agent::address {
  file { 'address.yaml' :
    ensure  => present,
    path    => $dse::datastax_agent::address::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse/datastax-agent/address.yaml.erb')
  }
}
