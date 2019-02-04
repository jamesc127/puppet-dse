class dse::datastax_agent::address (
  $path = $dse::datastax_agent::address::params::path,
  $opscenter_master_ip = $dse::datastax_agent::address::params::opscenter_master_ip,
  $cassandra_conf_location = $dse::datastax_agent::address::params::cassandra_conf_location,
  $cassandra_log_location = $dse::datastax_agent::address::params::cassandra_log_location,
  $opscenter_keyspace = $dse::datastax_agent::address::params::opscenter_keyspace,
  $opscenter_cassandra_contact_points = $dse::datastax_agent::address::params::opscenter_cassandra_contact_points,
  $thrift_max_conns = $dse::datastax_agent::address::params::thrift_max_conns,
  $async_pool_size = $dse::datastax_agent::address::params::async_pool_size,
  $async_queue_size = $dse::datastax_agent::address::params::async_queue_size,
  $backup_staging_dir = $dse::datastax_agent::address::params::backup_staging_dir,
  $tmp_dir = $dse::datastax_agent::address::params::tmp_dir,
  $sstableloader_max_heap_size = $dse::datastax_agent::address::params::sstableloader_max_heap_size,
  $backup_file_queue_max = $dse::datastax_agent::address::params::backup_file_queue_max,
  $tcp_response_timeout = $dse::datastax_agent::address::params::tcp_response_timeout,
  $pong_timeout_ms = $dse::datastax_agent::address::params::pong_timeout_ms
) inherits dse::datastax_agent::address::params {
  anchor { 'dse::datastax_agent::address::begin': } ->
  class { '::dse::datastax_agent::address::config': } ->
  anchor { 'dse::datastax_agent::address::end': }
}
