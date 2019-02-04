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
class dse::opscenter::clusters::config inherits dse::opscenter::clusters {
  create_resources('dse::opscenter::cluster', $clusters)
}
