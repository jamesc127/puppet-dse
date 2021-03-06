# == Class: dse5::cassandra::jvm_options::params
#
# Manages DSE Cassandra cassandra-env.sh default parameters. These are consumed
# by dse5::cassandra::cassandra_env. These values should be overridden with
# parameters passed to dse5::cassandra::jvm_options::config.
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
class dse5::cassandra::jvm_options::params {
  $path = '/etc/dse/cassandra/conf/jvm.options'
  $max_heap_size = undef
  $heap_newsize = undef
  $parallel_gc_threads = undef
  $conc_gc_threads = undef
  $initiating_heap_occupancy_percent = undef
  $loggc = undef
  $jna_tmpdir = undef
  $parallel_ref_proc_enabled = false
  $snappy_tmp_dir = undef
  $netty_tmp_dir = undef
  $java_io_tmp_dir = undef
  $jmx_notification_buffer_size = undef
  $cassandra_consistent_rangemovement = undef
  $cassandra_rar_buffer_size = undef
}
