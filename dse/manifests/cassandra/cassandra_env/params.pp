# == Class: dse::cassandra::cassandra_env::params
#
# Manages DSE Cassandra cassandra-env.sh default parameters. These are consumed
# by dse::cassandra::cassandra_env. These values should be overridden with
# parameters passed to dse::cassandra::cassandra_env::config.
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
class dse::cassandra::cassandra_env::params {
  $path = '/etc/dse/cassandra/cassandra-env.sh'
  $max_heap_size = undef
  $heap_newsize = undef
  $cassandra_heapdump_dir = undef
  $parallel_gc_threads = undef
  $conc_gc_threads = undef
  $initiating_heap_occupancy_percent = undef
  $loggc = undef
  $jmxremote_password_file = undef
  $jna_tmpdir = undef
  $parallel_ref_proc_enabled = false
  $snappy_tmp_dir = undef
  $netty_tmp_dir = undef
  $java_io_tmp_dir = undef
  $jmx_notification_buffer_size = undef
  $cassandra_consistent_rangemovement = undef
  $cassandra_rar_buffer_size = undef
}
