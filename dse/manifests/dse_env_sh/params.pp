# == Class: dse::dse_yaml::params
#
# Manages DSE dse.yaml default parameters. These are consumed by dse::dse_yaml.
# These values should be overridden with parameters passed to
# dse::dse_yaml::config.
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
class dse::dse_env_sh::params {
  # $path = '/etc/dse/dse-env.sh'
  $path = '/etc/dse/dse-env.sh'
  $java_home = undef
  $dse_home = '/usr/share/dse'
}
