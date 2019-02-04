# == Class: opscenter::service
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
class opscenter::service {
  notify { 'opscenter::service':
    message => 'OpsCenter service is managed by another team.'
  }
}
