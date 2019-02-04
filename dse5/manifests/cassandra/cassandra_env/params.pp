# == Class: dse5::cassandra::cassandra_env::params
#
# Manages DSE Cassandra cassandra-env.sh default parameters. These are consumed
# by dse5::cassandra::cassandra_env. These values should be overridden with
# parameters passed to dse5::cassandra::cassandra_env::config.
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
# Copyright 2016 Christopher Bradford
#
class dse5::cassandra::cassandra_env::params {
  $path = '/etc/dse/cassandra/conf/cassandra-env.sh'
  $cassandra_heapdump_dir = undef
  $jmxremote_password_file = undef
}
