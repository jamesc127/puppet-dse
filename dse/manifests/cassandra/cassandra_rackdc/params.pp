# == Class: dse::cassandra::cassandra_rackdc::params
# Manages DSE Cassandra cassandra-rackdc.properties default parameters. These
# are consumed by dse::cassandra::cassandra_rackdc. These values should be
# overridden with parameters passed to dse::cassandra::cassandra_env::config.
#
# Note parameters exposed through Puppet are intentionally kept minimal and only
# reflect changes made within this environment.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::cassandra::cassandra_rackdc::params {
  $path = '/etc/dse/cassandra/cassandra-rackdc.properties'
  $dc = 'DC1'
  $rack = 'RAC1'
  $dc_suffix = undef
  $prefer_local = undef
}
