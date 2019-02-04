# == Class: dse::service
#
# Manages the DSE service. In this case it's a NOOP.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::service {
  notify { 'dse::service':
    message => 'DSE service is managed by another team.'
  }
}
