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
class datastax_agent {
  anchor { 'datastax_agent::begin': } ->
  class { '::datastax_agent::install': } ->
  class { '::datastax_agent::config': } ~>
  class { '::datastax_agent::service': } ->
  anchor { 'datastax_agent::end': }
}
