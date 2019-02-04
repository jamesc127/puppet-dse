# == Class: dse::opscenter::opscenterd_conf::config
#
# Configures the OpsCenter service
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::opscenter::opscenterd_conf::config inherits dse::opscenter::opscenterd_conf {
  file { 'opscenterd.conf' :
    ensure  => present,
    path    => $dse::opscenter::opscenterd_conf::path,
    owner   => $dse::opscenter::opscenterd_conf::user,
    group   => $dse::opscenter::opscenterd_conf::group,
    mode    => '0644',
    content => template('dse/opscenter/opscenterd.conf.erb')
  }
}
