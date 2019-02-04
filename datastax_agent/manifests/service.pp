# == Class: datastax_agent::service
#
# Manages the DataStax Agent service. In this case it's a NOOP.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class datastax_agent::service {
  notify { 'datastax_agent::service':
    message => 'DataStax Agent service is managed by another team.'
  }
}
