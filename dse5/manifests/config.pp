# == Class: dse5::config
#
# Manages the DSE components' configuration
#
# === Examples
#
#  class { 'dse5::config':
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
class dse5::config {
  anchor { 'dse5::config::begin': } ->
  class { '::dse5::dse_defaults': } ->
  class { '::dse5::dse_yaml': } ->
  class { '::dse5::cassandra': } ->
  class { '::dse5::spark': } ->
  anchor { 'dse5::config::end': }
}
