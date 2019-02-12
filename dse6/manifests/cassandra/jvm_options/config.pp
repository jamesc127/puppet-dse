# == Class: dse5::cassandra::jvm_options::config
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
class dse6::cassandra::jvm_options::config inherits dse6::cassandra::jvm_options {
  file { 'jvm.options' :
    ensure  => present,
    path    => $dse6::cassandra::jvm_options::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse5/cassandra/jvm.options.erb')
  }
}
