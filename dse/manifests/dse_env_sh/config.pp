# == Class: dse::dse_yaml::config
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
class dse::dse_env_sh::config inherits dse::dse_env_sh {
  file { 'dse-env.sh' :
    ensure  => present,
    path    => $dse::dse_env_sh::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse/dse/dse-env.sh.erb')
  }
}
