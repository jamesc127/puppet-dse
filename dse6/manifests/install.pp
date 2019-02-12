# == Class: dse5::install
#
# Installs the DSE application. In this case it's a NOOP.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse6::install {
  notify { 'dse5::install':
    message => 'DSE installation is managed by another team.'
  }
}
