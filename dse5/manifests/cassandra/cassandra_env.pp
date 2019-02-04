# == Class: dse5::cassandra::cassandra_env
#
# Manages the DSE Cassandra cassandra-env.sh configuration file. Defaults may be
# found in cassandra/cassandra_env/params.pp.
#
# === Parameters
#
# [*path*]
#   Path to the configuration file on disk.
#   Default: /etc/dse/cassandra/conf/cassandra-env.sh
#
# [*cassandra_heapdump_dir*]
#   Location where Cassandra should dump the heap.
#   Default: Undefined
# [*jmxremote_password_file*]
#   Password file for remote JMX access
#   Default: Undefined
#
# === Examples
#
#  class { 'dse5::cassandra::cassandra_env':
#    $path => '/some/other/directory/cassandra-env.sh'
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
class dse5::cassandra::cassandra_env (
  $path = $dse5::cassandra::cassandra_env::params::path,
  $cassandra_heapdump_dir = $dse5::cassandra::cassandra_env::params::cassandra_heapdump_dir,
  $jmxremote_password_file = $dse5::cassandra::cassandra_env::params::jmxremote_password_file,
) inherits dse5::cassandra::cassandra_env::params {
  anchor { 'dse5::cassandra::cassandra_env::begin': } ->
  class { '::dse5::cassandra::cassandra_env::config': } ->
  anchor { 'dse5::cassandra::cassandra_env::end': }
}
