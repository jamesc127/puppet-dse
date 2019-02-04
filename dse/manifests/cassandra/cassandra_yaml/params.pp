# == Class: dse::cassandra::cassandra_yaml::params
#
# Manages DSE Cassandra cassandra.yaml default parameters. These are consumed
# by dse::cassandra::cassandra_yaml. These values should be overridden with
# parameters passed to dse::cassandra::cassandra_yaml::config.
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
# Copyright 2016 Christopher Bradford
#
class dse::cassandra::cassandra_yaml::params {
  $path = '/etc/dse/cassandra/cassandra.yaml'

  $cluster_name = 'Test Cluster'
  $num_tokens = 1
  $initial_token = undef
  $authenticator = 'AllowAllAuthenticator'
  $authorizer = 'AllowAllAuthorizer'
  $seeds = ['127.0.0.1']
  $concurrent_reads = 32
  $concurrent_writes = 32
  $concurrent_counter_writes = 32
  $memtable_allocation_type = 'heap_buffers'
  $listen_address = 'localhost'
  $rpc_address = 'localhost'
  $batch_size_warn_threshold_in_kb = 5
  $compaction_throughput_mb_per_sec = 16
  $endpoint_snitch = 'com.datastax.bdp.snitch.DseSimpleSnitch'
  $server_encryption_options = {
    'internode_encryption' => 'none',
    'keystore' => 'resources/dse/conf/.keystore',
    'keystore_password' => 'cassandra',
    'truststore' => 'resources/dse/conf/.truststore',
    'truststore_password' => 'cassandra'
  }
  $client_encryption_options = {
    'enabled' => false,
    'optional' => false,
    'keystore' => 'resources/dse/conf/.keystore',
    'keystore_password' => 'cassandra'
  }
  $internode_compression = 'dc'
  $data_file_directories = ['/var/lib/cassandra/data']
  $commitlog_directory = '/var/lib/cassandra/commitlog'
  $saved_caches_directory = '/var/lib/cassandra/saved_caches'
  $commitlog_segment_recycling = undef
  $memtable_cleanup_threshold = 0.11
  $memtable_flush_writers = 16
  $concurrent_compactors = 16
  $stream_throughput_outbound_megabits_per_sec = 200
  $phi_convict_threshold = undef
  $otc_coalescing_strategy = 'TIMEHORIZON' # nil?
  $otc_coalescing_window_us = 200 # nil?
}
