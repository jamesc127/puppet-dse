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
  class { '::dse5::install': } ->
  class { '::dse5::config': } ~>
  class { '::dse5::service': } ->
  anchor { 'dse5::end': }
}
