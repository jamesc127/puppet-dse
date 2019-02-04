# == Class: dse::opscenter::logback_xml::config
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
class dse::opscenter::logback_xml::config inherits dse::opscenter::logback_xml {
  file { 'logback.xml' :
    ensure  => file,
    path    => $dse::opscenter::logback_xml::path,
    owner   => $dse::opscenter::logback_xml::user,
    group   => $dse::opscenter::logback_xml::group,
    mode    => '0644',
    content => template('dse/opscenter/logback.xml.erb')
  }

  file { 'opscenter_log_dir':
    ensure => directory,
    path => $dse::opscenter::logback_xml::log_directory,
    owner => $dse::opscenter::logback_xml::user,
    group => $dse::opscenter::logback_xml::group,
    mode => '0644'
  }
}
