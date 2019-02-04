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
class opscenter::clusters::config inherits opscenter::clusters {
  create_resources('opscenter::cluster', $clusters)
}
