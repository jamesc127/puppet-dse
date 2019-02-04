# == Class: dse::spark::spark_defaults::params
#
# Manages DSE Spark spark-defaults.conf default parameters. These are
# consumed by dse::spark::spark_defaults. These values should be overridden with
# parameters passed to dse::spark::spark_defaults::config.
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
class dse::spark::spark_defaults::params {
  $path = '/etc/dse/spark/spark.defaults'
  $hadoop_cassandra_username = undef
  $hadoop_cassandra_password = undef
  $cassandra_query_retry_count = undef
  $cassandra_read_timeout_ms = undef
}
