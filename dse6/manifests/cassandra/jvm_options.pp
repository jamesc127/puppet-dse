# == Class: dse5::cassandra::jvm_options
#
# Manages the DSE Cassandra jvm.options configuration file. Defaults may be
# found in cassandra/jvm_options/params.pp.
#
# === Parameters
#
# [*path*]
#   Path to the configuration file on disk.
#   Default: /etc/dse/cassandra/conf/jvm.options
#
# [*max_heap_size*]
#   Maximum heap size the JVM should allocate
#   Default: 1/2 RAM, Maximum 8G
#
# [*heap_newsize*]
#   Size of new heap regions
#   Default: # of cores * 100M
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
#  class { 'dse5::cassandra::jvm_options':
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
class dse6::cassandra::jvm_options (
  $path = $dse6::cassandra::jvm_options::params::path,
  $max_heap_size = $dse6::cassandra::jvm_options::params::max_heap_size,
  $heap_newsize = $dse6::cassandra::jvm_options::params::heap_newsize,
  $parallel_gc_threads = $dse6::cassandra::jvm_options::params::parallel_gc_threads,
  $conc_gc_threads = $dse6::cassandra::jvm_options::params::conc_gc_threads,
  $initiating_heap_occupancy_percent = $dse6::cassandra::jvm_options::params::initiating_heap_occupancy_percent,
  $loggc = $dse6::cassandra::jvm_options::params::loggc,
  $jna_tmpdir = $dse6::cassandra::jvm_options::params::jna_tmpdir,
  $parallel_ref_proc_enabled = $dse6::cassandra::jvm_options::params::parallel_ref_proc_enabled,
  $snappy_tmp_dir = $dse6::cassandra::jvm_options::params::snappy_tmp_dir,
  $netty_tmp_dir = $dse6::cassandra::jvm_options::params::netty_tmp_dir,
  $java_io_tmp_dir = $dse6::cassandra::jvm_options::params::java_io_tmp_dir,
  $jmx_notification_buffer_size = $dse6::cassandra::jvm_options::params::jmx_notification_buffer_size,
  $cassandra_consistent_rangemovement = $dse6::cassandra::jvm_options::params::cassandra_consistent_rangemovement,
  $cassandra_rar_buffer_size = $dse6::cassandra::jvm_options::params::cassandra_rar_buffer_size,
) inherits dse6::cassandra::jvm_options::params {
  anchor { 'dse5::cassandra::jvm_options::begin': } ->
  class { '::dse6::cassandra::jvm_options::config': } ->
  anchor { 'dse5::cassandra::jvm_options::end': }
}
