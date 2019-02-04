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
class datastax_agent::config {
  anchor { 'datastax_agent::config::begin': } ->
  class { '::datastax_agent::address': } ->
  class { '::datastax_agent::datastax_agent_default': } ->
  class { '::datastax_agent::datastax_agent_env': } ->
  class { '::datastax_agent::log4j_properties': } ->
  anchor { 'datastax_agent::config::end': }
}
