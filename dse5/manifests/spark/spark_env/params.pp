# == Class: dse5::spark::spark_env::params
#
# Manages DSE Spark spark-env.sh default parameters. These are
# consumed by dse5::spark::spark_env. These values should be overridden with
# parameters passed to dse5::spark::spark_env::config.
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
class dse5::spark::spark_env::params {
  $path = '/etc/dse/spark/spark-env.sh'
  $spark_worker_memory = undef
  $spark_worker_cores = undef
  $driver_memory = undef
  $worker_dir = undef
  $local_dirs = undef
  $worker_log_dir = undef
  $master_log_dir = undef
}
