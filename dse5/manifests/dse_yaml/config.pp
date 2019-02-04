# == Class: dse5::dse_yaml::config
#
# Manages DSE dse.yaml configuration file. This file manages configuration
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
class dse5::dse_yaml::config inherits dse5::dse_yaml {
  file { 'dse.yaml' :
    ensure  => present,
    path    => $dse5::dse_yaml::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse5/dse/dse.yaml.erb')
  }
}
