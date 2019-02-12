# == Class: dse5::cassandra::cassandra_yaml::config
#
# Manages DSE Cassandra cassandra.yaml configuration file. This file manages
# most configuration parameters for Cassandra
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse6::cassandra::cassandra_yaml::config inherits dse6::cassandra::cassandra_yaml {
  file { 'cassandra.yaml' :
    ensure  => present,
    path    => $dse6::cassandra::cassandra_yaml::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse5/cassandra/cassandra.yaml.erb')
  }
}
