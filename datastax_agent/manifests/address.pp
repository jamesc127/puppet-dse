class datastax_agent::address (
  $path = $datastax_agent::address::params::path,
  $opscenter_master_ip = $datastax_agent::address::params::opscenter_master_ip,
  $cassandra_conf_location = $datastax_agent::address::params::cassandra_conf_location,
  $cassandra_log_location = $datastax_agent::address::params::cassandra_log_location,
  $opscenter_keyspace = $datastax_agent::address::params::opscenter_keyspace,
  $opscenter_cassandra_contact_points = $datastax_agent::address::params::opscenter_cassandra_contact_points,
  $thrift_max_conns = $datastax_agent::address::params::thrift_max_conns,
  $async_pool_size = $datastax_agent::address::params::async_pool_size,
  $async_queue_size = $datastax_agent::address::params::async_queue_size,
  $backup_staging_dir = $datastax_agent::address::params::backup_staging_dir,
  $tmp_dir = $datastax_agent::address::params::tmp_dir,
  $sstableloader_max_heap_size = $datastax_agent::address::params::sstableloader_max_heap_size,
  $backup_file_queue_max = $datastax_agent::address::params::backup_file_queue_max,
  $tcp_response_timeout = $datastax_agent::address::params::tcp_response_timeout,
  $pong_timeout_ms = $datastax_agent::address::params::pong_timeout_ms
) inherits datastax_agent::address::params {
  anchor { 'datastax_agent::address::begin': } ->
  class { '::datastax_agent::address::config': } ->
  anchor { 'datastax_agent::address::end': }
}
