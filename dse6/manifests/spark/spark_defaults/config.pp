# == Class: dse5::spark::spark_defaults::config
#
# Manages DSE Spark spark-defaults.conf configuration file. This file
# manages configuration parameters related to executing Spark jobs.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse6::spark::spark_defaults::config inherits dse6::spark::spark_defaults {
  file { 'spark-defaults.conf' :
    ensure  => present,
    path    => $dse6::spark::spark_defaults::path,
    owner   => 'cassandra',
    group   => 'cassandra',
    mode    => '0644',
    content => template('dse5/spark/spark-defaults.conf.erb')
  }
}
