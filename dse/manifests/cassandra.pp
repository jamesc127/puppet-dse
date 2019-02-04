# == Class: dse::cassandra
#
# Manages the DSE Cassandra component configuration
#
# === Examples
#
#  class { 'dse::cassandra':
#  }
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::cassandra {
  anchor { 'dse::cassandra::begin': } ->
  class { '::dse::cassandra::cassandra_yaml': } ->
  class { '::dse::cassandra::cassandra_env': } ->
  class { '::dse::cassandra::cassandra_rackdc': } ->
  class { '::dse::cassandra::twcs_jar': } ->
  anchor { 'dse::cassandra::end': }
}
