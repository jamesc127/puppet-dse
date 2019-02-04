# == Class: dse5::spark::spark_env::config
#
# Manages DSE Spark spark-env.sh configuration file. This file manages
# configuration parameters related to the Spark executors and driver.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse5::spark::spark_env::config inherits dse5::spark::spark_env {
  file { 'spark-env.sh' :
    ensure  => present,
    path    => $dse5::spark::spark_env::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse5/spark/spark-env.sh.erb')
  }

  file { 'spark_worker_dir':
    ensure  => directory,
    path    => $dse5::spark::spark_env::worker_dir,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    recurse => true
  }

  file { 'spark_master_dir':
    ensure  => directory,
    path    => $dse5::spark::spark_env::master_log_dir,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    recurse => true
  }

  file { 'spark_local_dirs':
    ensure  => directory,
    path    => $dse5::spark::spark_env::local_dirs,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    recurse => true
  }
}
