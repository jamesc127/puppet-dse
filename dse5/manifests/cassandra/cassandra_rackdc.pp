# == Class: dse5::cassandra::cassandra_rackdc
#
# Manages the DSE Cassandra cassandra-rackdc.properties configuration file.
# Defaults may be found in cassandra/cassandra_rackdc/params.pp
#
# === Parameters
#
# [*dc*]
#   Datacenter where this node resides. This parameter may include workload
#   information. E.g. US-EAST-1-Analytics
#   Default: DC1
#
# [*rack*]
#   Rack where this node resides. Data replication algorithms use this
#   information.
#   Default: RAC1
#
# [*dc_suffix*]
#   Appends a suffic to the DC name
#   Default: Undefined
#
# [*prefer_local*]
#   Makes the snitch prefer internal IP addresses
#   Default: Undefined
#
# === Examples
#
#  class { 'dse5::cassandra::cassandra_rackdc':
#    $path => '/some/other/directory/cassandra-rackdc.properties',
#    $dc => 'SANTACLARA',
#    $rack => 'H126'
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
class dse5::cassandra::cassandra_rackdc (
  $path = $dse5::cassandra::cassandra_rackdc::params::path,
  $dc = $dse5::cassandra::cassandra_rackdc::params::dc,
  $rack = $dse5::cassandra::cassandra_rackdc::params::rack,
  $dc_suffix = $dse5::cassandra::cassandra_rackdc::params::dc_suffix,
  $prefer_local = $dse5::cassandra::cassandra_rackdc::params::prefer_local
) inherits dse5::cassandra::cassandra_rackdc::params {
  anchor { 'dse5::cassandra::cassandra_rackdc::begin': } ->
  class { '::dse5::cassandra::cassandra_rackdc::config': } ->
  anchor { 'dse5::cassandra::cassandra_rackdc::end': }
}
