# == Class: opscenter::logback_xml::config
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
class opscenter::logback_xml::config inherits opscenter::logback_xml {
  file { 'logback.xml' :
    ensure  => file,
    path    => $opscenter::logback_xml::path,
    owner   => $opscenter::logback_xml::user,
    group   => $opscenter::logback_xml::group,
    mode    => '0644',
    content => template('opscenter/logback.xml.erb')
  }

  file { 'opscenter_log_dir':
    ensure => directory,
    path => $opscenter::logback_xml::log_directory,
    owner => $opscenter::logback_xml::user,
    group => $opscenter::logback_xml::group,
    mode => '0644'
  }
}
