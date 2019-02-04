# == Class: dse5::dse_env_sh
#
# Manages the DSE environment configuration. This file includes JAVA_HOME for
# the DSE service
#
# === Parameters
#
# [*path*]
#   Path to the configuration file on disk.
#   Default: bin/dse-env.sh
#
# [*java_home*]
#   Path to the JAVA HOME directory
#   Default: undef
#
# [*dse_home*]
#   Path to the DSE installation
#   Default: /usr/share/dse
#
# === Examples
#
#  class { 'dse5::dse_env_sh':
#  }
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse5::dse_env_sh (
  $path = $dse5::dse_env_sh::params::path,
  $java_home = $dse5::dse_env_sh::params::java_home,
  $dse_home = $dse5::dse_env_sh::params::dse_home
) inherits dse5::dse_env_sh::params {
  anchor { 'dse5::dse_env_sh::begin': } ->
  class { '::dse5::dse_env_sh::config': } ->
  anchor { 'dse5::dse_env_sh::end': }
}
