# == Class: dse5::service
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
class dse5::service {
  notify { 'dse5::service':
    message => 'DSE 5 service is managed by another team.'
  }
}
