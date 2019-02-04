# == Class: dse::cassandra::cassandra_yaml
#
# Manages the DSE Cassandra cassandra.yaml configuration file. Defaults may be
# found in cassandra/cassandra_yaml/params.pp.
#
# === Parameters
#
# [*path*]
#   Path to the configuration file on disk.
#   Default: /etc/dse/cassandra/conf/cassandra.yaml
#
# [*cluster_name*]
#   Name of the cluster this node belongs to. It is difficult to change this
#   value later.
#   Default: Test Cluster
#
# [*num_tokens*]
#   Number of tokens ranges per node. Setting this value > 1 enables vnodes.
#   Default: 1
#
# [*initial_token*]
#   Identifies all tokens owned by this node
#   Default: nil
#
# [*authenticator*]
#   Authenticator class used when a client connects to the cluster
#   Default: AllowAllAuthenticator
#
# [*authorizer*]
#   Authorization class used when a client successfully authenticates with the
#   cluster. This controls which operations are permitted.
#   Default: AllowAllAuthorizaer
#
# [*seeds*]
#   Seed nodes for the cluster. Each datacenter should have at least two nodes
#   identified here.
#   Default: '127.0.0.1'
#
# [*concurrent_reads*]
#   Number of concurrent read operations, 16 * number of drives. If using SSDs
#   this value may be increased.
#   Default: 32
#
# [*concurrent_writes*]
#   Number of concurrent write operations, 8 * number of CPU cores is common. If
#   using SSDs this value may be increased.
#   Default: 32
#
# [*concurrent_counter_writes*]
#   Number of concurrent counter writes, since this uses read it should be set
#   to the same as concurrent_reads.
#   Default: 32
#
# [*memtable_allocation_type*]
#   Location of memtable allocations
#   Default: heap_buffers
#
# [*listen_address*]
#   Address for other nodes in the cluster to connect to.
#   Default: localhost
#
# [*rpc_address*]
#   Address for client connections
#   Default: localhost
#
# [*batch_size_warn_threshold_in_kb*]
#   Warns when a batch is larger than this size.
#   Default: 5
#
# [*compaction_throughput_mb_per_sec*]
#   Rate at which compaction occurs. This may be increased when using SSDs.
#   Default: 16
#
# [*endpoint_snitch*]
#   Class which shares this node's topology information
#   Default: com.datastax.bdp.snitch.DseSimpleSnitch
#
# [*server_encryption_options*]
#   Hash containing all options needed for node to node encryption
#   Default: refer to dse::cassandra::cassandra_yaml::params
#
# [*client_encryption_options*]
#   Hash containing all options needed for client to node encryption
#   Default: refer to dse::cassandra::cassandra_yaml::params
#
# [*internode_compression*]
#   Where compression should be used be used
#   Default: dc
#
# [*data_file_directories*]
#   Directories where SSTables are persisted. This is an array which may contain
#   multiple entries for JBOD approaches.
#   Default: /var/lib/cassandra/data
#
# [*commitlog_directory*]
#   Directory where the commitlog is stored. This should be different disk than
#   data_file_directories.
#   Default: /var/lib/cassandra/commitlog
#
# [*saved_caches_directory*]
#   Directory where caches are saved.
#   Default: /var/lib/cassandra/saved_caches
#
# [*commitlog_segment_recycling*]
#   Enables recycling commitlog segments. This option will be removed in the
#   future.
#   Default: false
#
# [*memtable_cleanup_threshold*]
#   Ratio of occupied non-flushing memtable size to total permitted size that
#   will trigger a flush of the largest memtable
#   Default: 0.11
#
# [*memtable_flush_writers*]
#   Sets the amount of memtable flush writer threads
#   Default: 16
#
# [*concurrent_compactors*]
#   Number of simultaneous compactions to allow
#   Default: 16
#
# [*stream_throughput_outbound_megabits_per_sec*]
#   Throttles all outbound streaming file transfers on this node to the given
#   total throughput in Mbps.
#   Default: 200
#
# [*phi_convict_threshold*]
#   Determines hoe lenient we are when marking a node as down.
#   Default: 8
#
# [*otc_coalescing_strategy*]
#
# [*otc_coalescing_window_us*]
#
# === Examples
#
#  class { 'dse::cassandra::cassandra_yaml':
#    $cluster_name => 'My Cluster',
#    $num_tokens => 64
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
class dse::cassandra::cassandra_yaml (
  $path = $dse::cassandra::cassandra_yaml::params::path,

  $cluster_name = $dse::cassandra::cassandra_yaml::params::cluster_name,
  $num_tokens = $dse::cassandra::cassandra_yaml::params::num_tokens,
  $initial_token = $dse::cassandra::cassandra_yaml::params::initial_token,
  $authenticator = $dse::cassandra::cassandra_yaml::params::authenticator,
  $authorizer = $dse::cassandra::cassandra_yaml::params::authorizer,
  $seeds = $dse::cassandra::cassandra_yaml::params::seeds,
  $concurrent_reads = $dse::cassandra::cassandra_yaml::params::concurrent_reads,
  $concurrent_writes = $dse::cassandra::cassandra_yaml::params::concurrent_writes,
  $concurrent_counter_writes = $dse::cassandra::cassandra_yaml::params::concurrent_counter_writes,
  $memtable_allocation_type = $dse::cassandra::cassandra_yaml::params::memtable_allocation_type,
  $listen_address = $dse::cassandra::cassandra_yaml::params::listen_address,
  $rpc_address = $dse::cassandra::cassandra_yaml::params::rpc_address,
  $batch_size_warn_threshold_in_kb = $dse::cassandra::cassandra_yaml::params::batch_size_warn_threshold_in_kb,
  $compaction_throughput_mb_per_sec = $dse::cassandra::cassandra_yaml::params::compaction_throughput_mb_per_sec,
  $endpoint_snitch = $dse::cassandra::cassandra_yaml::params::endpoint_snitch,
  $server_encryption_options = $dse::cassandra::cassandra_yaml::params::server_encryption_options,
  $client_encryption_options = $dse::cassandra::cassandra_yaml::params::client_encryption_options,
  $internode_compression = $dse::cassandra::cassandra_yaml::params::internode_compression,
  $data_file_directories = $dse::cassandra::cassandra_yaml::params::data_file_directories,
  $commitlog_directory = $dse::cassandra::cassandra_yaml::params::commitlog_directory,
  $saved_caches_directory = $dse::cassandra::cassandra_yaml::params::saved_caches_directory,
  $commitlog_segment_recycling = $dse::cassandra::cassandra_yaml::params::commitlog_segment_recycling,
  $memtable_cleanup_threshold = $dse::cassandra::cassandra_yaml::params::memtable_cleanup_threshold,
  $memtable_flush_writers = $dse::cassandra::cassandra_yaml::params::memtable_flush_writers,
  $concurrent_compactors = $dse::cassandra::cassandra_yaml::params::concurrent_compactors,
  $stream_throughput_outbound_megabits_per_sec = $dse::cassandra::cassandra_yaml::params::stream_throughput_outbound_megabits_per_sec,
  $phi_convict_threshold = $dse::cassandra::cassandra_yaml::params::phi_convict_threshold,
  $otc_coalescing_strategy = $dse::cassandra::cassandra_yaml::params::otc_coalescing_strategy,
  $otc_coalescing_window_us = $dse::cassandra::cassandra_yaml::params::otc_coalescing_window_us,
) inherits dse::cassandra::cassandra_yaml::params {
  anchor { 'dse::cassandra::cassandra_yaml::begin': } ->
  class { '::dse::cassandra::cassandra_yaml::config': } ->
  anchor { 'dse::cassandra::cassandra_yaml::end': }
}
