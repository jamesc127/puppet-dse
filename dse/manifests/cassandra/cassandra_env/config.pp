# == Class: dse::cassandra::cassandra_env::config
#
# Manages DSE Cassandra cassandra-env.sh configuration file. This file manages
# configuration parameters related to the JVM including heap, gc, and JMX.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::cassandra::cassandra_env::config inherits dse::cassandra::cassandra_env {
  file { 'cassandra-env.sh' :
    ensure  => present,
    path    => $dse::cassandra::cassandra_env::params::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse/cassandra/cassandra-env.sh.erb')
  }
}
