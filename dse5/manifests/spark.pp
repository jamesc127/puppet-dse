# == Class: dse5::spark
#
# Manages the DSE Spark component configuration, more specific tuning is
# available through puppet component classes.
#
# === Examples
#
#  class { 'dse5::spark':
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
class dse5::spark {
  anchor { 'dse5::spark::begin': } ->
  class { '::dse5::spark::spark_defaults': } ->
  class { '::dse5::spark::spark_env': } ->
  anchor { 'dse5::spark::end': }
}
