# == Class: opscenter::opscenterd_conf::config
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
class opscenter::opscenterd_conf::config inherits opscenter::opscenterd_conf {
  file { 'opscenterd.conf' :
    ensure  => present,
    path    => $opscenter::opscenterd_conf::path,
    owner   => $opscenter::opscenterd_conf::user,
    group   => $opscenter::opscenterd_conf::group,
    mode    => '0644',
    content => template('opscenter/opscenterd.conf.erb')
  }
}
