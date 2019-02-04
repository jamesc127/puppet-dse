# == Class: dse::config
#
# Manages the DSE components' configuration
#
# === Examples
#
#  class { 'dse::config':
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
class dse::config {
  anchor { 'dse::config::begin': } ->
  class { '::dse::dse_defaults': } ->
  class { '::dse::dse_yaml': } ->
  class { '::dse::cassandra': } ->
  class { '::dse::spark': } ->
  anchor { 'dse::config::end': }
}
