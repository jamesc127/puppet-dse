# == Class: dse5::dse_default
#
# Manages the DSE specific default configuration. This file controls the type of
# node being started (Cassandra, Analytics, Search)
#
# === Parameters
#
# [*path*]
#   Path to the configuration file on disk.
#   Default: /etc/dse/cassandra/conf/cassandra.yaml
#
# [*solr_enabled*]
#   Enables Solr functionality on this node. (1 or 0)
#   Default: 0
#
# [*spark_enabled*]
#   Enables Spark functionality on this node. (1 or 0)
#   Default: 0
#
# [*cfs_enabled*]
#   Enables CFS functionality on this node. (1 or 0)
#   Default: 0
#
# === Examples
#
#  class { 'dse5::dse_default':
#    spark_enabled => 1
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
class dse5::dse_default (
  $path          = $dse5::dse_default::params::path,
  $solr_enabled  = $dse5::dse_default::params::solr_enabled,
  $spark_enabled = $dse5::dse_default::params::spark_enabled,
  $cfs_enabled   = $dse5::dse_default::params::cfs_enabled,
  $java_home     = $dse5::dse_default::params::java_home,
  $spark_home    = $dse5::dse_default::params::spark_home
) inherits dse5::dse_default::params {
  anchor { 'dse5::dse_default::begin': } ->
  class { '::dse5::dse_default::config': } ->
  anchor { 'dse5::dse_default::end': }
}
