class dse::datastax_agent::datastax_agent_env (
  $path = $dse::datastax_agent::datastax_agent_env::params::path,
  $agent_heap = $dse::datastax_agent::datastax_agent_env::params::agent_heap,
  $datastax_agent_heapdump_dir = $dse::datastax_agent::datastax_agent_env::params::datastax_agent_heapdump_dir
) inherits dse::datastax_agent::datastax_agent_env::params {
  anchor { 'dse::datastax_agent::datastax_agent_env::begin': } ->
  class { '::dse::datastax_agent::datastax_agent_env::config': } ->
  anchor { 'dse::datastax_agent::datastax_agent_env::end': }
}
