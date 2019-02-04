# == Class: dse::spark
#
# Manages the DSE Spark component configuration, more specific tuning is
# available through puppet component classes.
#
# === Examples
#
#  class { 'dse::spark':
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
class dse::spark {
  anchor { 'dse::spark::begin': } ->
  class { '::dse::spark::spark_defaults': } ->
  class { '::dse::spark::spark_env': } ->
  anchor { 'dse::spark::end': }
}
