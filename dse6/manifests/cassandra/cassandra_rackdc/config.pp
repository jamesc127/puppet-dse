# == Class: dse5::cassandra::cassandra_rackdc::config
#
# Manages DSE Cassandra cassandra-rackdc.properties configuration file. This
# file manages this node's topology information.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse6::cassandra::cassandra_rackdc::config inherits dse6::cassandra::cassandra_rackdc {
  file { 'cassandra-rackdc.properties' :
    ensure  => present,
    path    => $dse6::cassandra::cassandra_rackdc::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse5/cassandra/cassandra-rackdc.properties.erb')
  }
}
