# == Class: datastax_agent::install
#
# Installs the DataStax Agent application. In this case it's a NOOP.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class datastax_agent::install {
  notify { 'datastax_agent::install':
    message => 'DataStax Agent installation is managed by another team.'
  }
}
