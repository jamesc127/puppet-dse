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
class dse::init {
  anchor { 'dse::begin': } ->
  class { '::dse::install': } ->
  class { '::dse::config': } ~>
  class { '::dse::service': } ->
  anchor { 'dse::end': }
}
