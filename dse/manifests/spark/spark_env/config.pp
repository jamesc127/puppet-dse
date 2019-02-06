# == Class: dse::spark::spark_env::config
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
class dse::spark::spark_env::config inherits dse::spark::spark_env {
  file { 'spark-env.sh' :
    ensure  => present,
    path    => $dse::spark::spark_env::params::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse/spark/spark-env.sh.erb')
  }

  file { 'spark_worker_dir':
    ensure  => directory,
    path    => $dse::spark::spark_env::params::worker_dir,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    recurse => true
  }

  file { 'spark_local_dirs':
    ensure  => directory,
    path    => $dse::spark::spark_env::params::local_dirs,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    recurse => true
  }
}
