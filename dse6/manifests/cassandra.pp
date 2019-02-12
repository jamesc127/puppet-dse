# == Class: dse5::cassandra
#
# Manages the DSE Cassandra component configuration
#
# === Examples
#
#  class { 'dse5::cassandra':
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
class dse6::cassandra {
  anchor { 'dse5::cassandra::begin': } ->
  class { '::dse6::cassandra::cassandra_yaml': } ->
  class { '::dse6::cassandra::cassandra_env': } ->
  class { '::dse6::cassandra::cassandra_rackdc': } ->
  class { '::dse6::cassandra::twcs_jar': } ->
  anchor { 'dse5::cassandra::end': }
}
