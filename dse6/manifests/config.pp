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
class dse6::config {
  anchor { 'dse5::config::begin': } ->
  class { '::dse6::dse_defaults': } ->
  class { '::dse6::dse_yaml': } ->
  class { '::dse6::cassandra': } ->
  class { '::dse6::spark': } ->
  anchor { 'dse5::config::end': }
}
