# == Class: dse5::dse_default::params
#
# Manages DSE dse.defaults default parameters. These are consumed by
# dse5::dse_default. These values should be overridden with parameters passed to
# dse5::dse_default::config.
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
# Copyright 2016 Christopher Bradford, unless otherwise noted.
#
class dse5::dse_default::params {
  $path          = '/etc/dse/dse.default'
  $solr_enabled  = 0
  $spark_enabled = 0
  $cfs_enabled   = 0
  $java_home     = undef
  $spark_home    = undef
}
