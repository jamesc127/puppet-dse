# == Class: dse5::spark::spark_defaults
#
# Manages the DSE Spark spark-defaults.confg configuration file. Defaults may be
# found in spark/spark_defaults/params.pp.
#
# === Parameters
#
# [*path*]
#   Path to the configuration file on disk.
#   Default: /etc/dse/spark/spark-defaults.conf
#
# [*hadoop_cassandra_username*]
#   Username to use when connecting to Hadoop.
#   Default: Undefined
#
# [*hadoop_cassandra_password*]
#   Password to use when connecting to Hadoop.
#   Default: Undefined
#
# [*cassandra_query_retry_count*]
#   Number of times to retry a query before failing
#   Default: Undefined
#
# [*cassandra_read_timeout_ms*]
#   Timeout for Cassandra read requests
#   Default: Undefined
#
# === Examples
#
#  class { 'dse5::spark::spark_defaults':
#    $path => '/some/other/directory/spark-defaults.conf'
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
class dse5::spark::spark_defaults (
  $path = $dse5::spark::spark_defaults::params::path,
  $hadoop_cassandra_username = $dse5::spark::spark_defaults::params::hadoop_cassandra_username,
  $hadoop_cassandra_password = $dse5::spark::spark_defaults::params::hadoop_cassandra_password,
  $cassandra_query_retry_count = $dse5::spark::spark_defaults::params::cassandra_query_retry_count,
  $cassandra_read_timeout_ms = $dse5::spark::spark_defaults::params::cassandra_read_timeout_ms
) inherits dse5::spark::spark_defaults::params {
  anchor { 'dse5::spark::spark_defaults::begin': } ->
  class { '::dse5::spark::spark_defaults::config': } ->
  anchor { 'dse5::spark::spark_defaults::end': }
}
