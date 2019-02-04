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
class opscenter::config {
  anchor { 'opscenter::config::begin': } ->
  class { '::opscenter::opscenterd_conf': } ->
  class { '::opscenter::logback_xml': } ->
  class { '::opscenter::cluster': } ->
  anchor { 'dse::config::end': }
}
