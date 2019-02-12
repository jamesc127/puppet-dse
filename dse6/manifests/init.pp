# == Class: dse
#
# Basic DSE configuration, more specific tuning is available through puppet
# component classes.
#
# === Examples
#
#  class { 'dse':
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
class dse {
  anchor { 'dse5::begin': } ->
  class { '::dse6::install': } ->
  class { '::dse6::config': } ~>
  class { '::dse6::service': } ->
  anchor { 'dse5::end': }
}
