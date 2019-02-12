# == Class: dse5::dse_yaml::params
#
# Manages DSE dse.yaml default parameters. These are consumed by dse5::dse_yaml.
# These values should be overridden with parameters passed to
# dse5::dse_yaml::config.
#
# Note parameters exposed through Puppet are intentionally kept minimal and only
# reflect changes made within this environment.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford, unless otherwise noted.
#
class dse6::dse_env_sh::params {
  $path = '/etc/dse/dse.yaml'
  $java_home = undef
  $dse_home = '/usr/share/dse'
}
