# == Class: opscenter::install
#
# Installs the OpsCenter application. In this case it's a NOOP.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class opscenter::install {
  notify { 'opscenter::install':
    message => 'OpsCenter installation is managed by another team.'
  }
}
