# == Class: dse::cassandra::cassandra_env
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
# [*max_heap_size*]
#   Maximum heap size the JVM should allocate
#   Default: 1/2 RAM, Maximum 8G
#
# [*heap_newsize*]
#   Size of new heap regions
#   Default: # of cores * 100M
#
# [*cassandra_heapdump_dir*]
#   Location where Cassandra should dump the heap.
#   Default: Undefined
#
# [*parallel_gc_threads*]
#   Number of threads for parallel garbage collection. Set this to <= number of
#   full cores.
#   Default: Undefined
#
# [*conc_gc_threads*]
#   Number of concurrent GC threads
#   Default: undefined
#
# [*initiating_heap_occupancy_percent*]
#
# [*loggc*]
#   Logfile to write gc events to
#   Default: Undefined
#
# [*jmxremote_password_file*]
#   Password file for remote JMX access
#   Default: Undefined
#
# [*jna_tmp_dir*]
#   Directory JNA should use when /tmp is set noexec
#   Default: Undefined
#
# [*parallel_ref_proc_enabled*]
#   Enable parallel reference processing. True or False
#   Default: Undefined
#
# [*snappy_tmp_dir*]
#   Directory where the snappy native library should be placed
#   Default: Undefined
#
# [*netty_tmp_dir*]
#   Directory where the netty native library should be placed
#   Default: Undefined
#
# [*java_io_tmp_dir*]
#   Directory where java should place its temporary files
#   Default: Undefined
#
# [*jmx_notification_buffer_size*]
#   Size of the JMX notification buffer
#   Default: Undefined
#
# [*cassandra_consistent_rangemovement*]
#   Controls consistent rangemovement flag
#   Default: Undefined
#
# [*cassandra_rar_buffer_size*]
#   Controls random access reader buffer size
#   Default: Undefined
#
# === Examples
#
#  class { 'dse::cassandra::cassandra_env':
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
class dse::cassandra::cassandra_env (
  $path = $dse::cassandra::cassandra_env::params::path,
  $max_heap_size = $dse::cassandra::cassandra_env::params::max_heap_size,
  $heap_newsize = $dse::cassandra::cassandra_env::params::heap_newsize,
  $cassandra_heapdump_dir = $dse::cassandra::cassandra_env::params::cassandra_heapdump_dir,
  $parallel_gc_threads = $dse::cassandra::cassandra_env::params::parallel_gc_threads,
  $conc_gc_threads = $dse::cassandra::cassandra_env::params::conc_gc_threads,
  $initiating_heap_occupancy_percent = $dse::cassandra::cassandra_env::params::initiating_heap_occupancy_percent,
  $loggc = $dse::cassandra::cassandra_env::params::loggc,
  $jmxremote_password_file = $dse::cassandra::cassandra_env::params::jmxremote_password_file,
  $jna_tmpdir = $dse::cassandra::cassandra_env::params::jna_tmpdir,
  $parallel_ref_proc_enabled = $dse::cassandra::cassandra_env::params::parallel_ref_proc_enabled,
  $snappy_tmp_dir = $dse::cassandra::cassandra_env::params::snappy_tmp_dir,
  $netty_tmp_dir = $dse::cassandra::cassandra_env::params::netty_tmp_dir,
  $java_io_tmp_dir = $dse::cassandra::cassandra_env::params::java_io_tmp_dir,
  $jmx_notification_buffer_size = $dse::cassandra::cassandra_env::params::jmx_notification_buffer_size,
  $cassandra_consistent_rangemovement = $dse::cassandra::cassandra_env::params::cassandra_consistent_rangemovement,
  $cassandra_rar_buffer_size = $dse::cassandra::cassandra_env::params::cassandra_rar_buffer_size,
) inherits dse::cassandra::cassandra_env::params {
  anchor { 'dse::cassandra::cassandra_env::begin': } ->
  class { '::dse::cassandra::cassandra_env::config': } ->
  anchor { 'dse::cassandra::cassandra_env::end': }
}
