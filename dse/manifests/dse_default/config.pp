# == Class: dse::dse_default::config
#
# Manages DSE dse.default configuration file. This file manages configuration
# parameters related to DSE as a whole.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::dse_default::config inherits dse::dse_default {
  notify{'dse::dse_default::config':
    message => "path is ${dse::dse_default::params::path}"
  }
  file { 'dse.default' :
    ensure  => present,
    path    => $dse::dse_default::params::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse/dse/dse.default.erb')
  }
}
