# == Class: dse5::spark::spark_env
#
# Manages the DSE Spark spark-defaults.confg configuration file. Defaults may be
# found in spark/spark_env/params.pp.
#
# === Parameters
#
# [*path*]
#   Path to the configuration file on disk.
#   Default: /etc/dse/spark/spark-env.sh
#
# [*spark_worker_memory*]
#   The amount of memory to make available per worker
#   Default: undef - uses fraction value in dse_yaml
#
# [*spark_memory_cores*]
#   The number of cores to make available to Spark
#   Default: undef - uses fraction value in dse_yaml
#
# [*driver_memory*]
#   Heap used by the driver process
#   Default: 512M
#
# [*worker_dir*]
#   Directory where Spark workers may store information
#   Default: /var/lib/spark/worker
#
# [*local_dirs*]
#   Location where RDDs may persist or spill over onto disk
#   Default: /var/lib/spark/rdd
#
# [*worker_log_dir*]
#   Directory where Spark workers log their output
#   Default: /var/log/spark/worker
#
# === Examples
#
#  class { 'dse5::spark::spark_env':
#    $path => '/some/other/directory/spark-env.sh',
#    $driver_memory => '1G'
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
class dse5::spark::spark_env (
  $path                = $dse5::spark::spark_env::params::path,
  $spark_worker_memory = $dse5::spark::spark_env::params::spark_worker_memory,
  $spark_worker_cores  = $dse5::spark::spark_env::params::spark_worker_cores,
  $driver_memory       = $dse5::spark::spark_env::params::driver_memory,
  $worker_dir          = $dse5::spark::spark_env::params::worker_dir,
  $local_dirs          = $dse5::spark::spark_env::params::local_dirs,
  $worker_log_dir      = $dse5::spark::spark_env::params::worker_log_dir,
  $master_log_dir      = $dse5::spark::spark_env::params::master_log_dir,
) inherits dse5::spark::spark_env::params {
  anchor { 'dse5::spark::spark_env::begin': } ->
  class { '::dse5::spark::spark_env::config': } ->
  anchor { 'dse5::spark::spark_env::end': }
}
