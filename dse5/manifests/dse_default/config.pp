# == Class: dse5::dse_default::config
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
class dse5::dse_default::config inherits dse5::dse_default {
  file { 'dse.default' :
    ensure  => present,
    path    => $dse5::dse_default::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse5/dse/dse.default.erb')
  }
}
