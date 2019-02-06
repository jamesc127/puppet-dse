# == Class: dse::spark::spark_env::params
#
# Manages DSE Spark spark-env.sh default parameters. These are
# consumed by dse::spark::spark_env. These values should be overridden with
# parameters passed to dse::spark::spark_env::config.
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
class dse::spark::spark_env::params {
  $path = '/etc/dse/spark/spark-env.sh'
  $spark_worker_memory = undef
  $spark_worker_cores = undef
  $driver_memory = undef
  $worker_dir = '/var/lib/spark/worker/'
  $local_dirs = '/var/lib/spark/'
  $worker_log_dir = '/var/log/spark/worker/'
}
