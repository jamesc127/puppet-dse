class datastax_agent::datastax_agent_env (
  $path = $datastax_agent::datastax_agent_env::params::path,
  $agent_heap = $datastax_agent::datastax_agent_env::params::agent_heap,
  $datastax_agent_heapdump_dir = $datastax_agent::datastax_agent_env::params::datastax_agent_heapdump_dir
) inherits datastax_agent::datastax_agent_env::params {
  anchor { 'datastax_agent::datastax_agent_env::begin': } ->
  class { '::datastax_agent::datastax_agent_env::config': } ->
  anchor { 'datastax_agent::datastax_agent_env::end': }
}
