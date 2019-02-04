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
class opscenter {
  anchor { 'opscenter::begin': } ->
  class { '::opscenter::install': } ->
  class { '::opscenter::config': } ~>
  class { '::opscenter::service': } ->
  anchor { 'opscenter::end': }
}
