class dse::datastax_agent::datastax_agent_default (
  $path = $dse::datastax_agent::datastax_agent_default::params::path,
  $java_home = $dse::datastax_agent::datastax_agent_default::params::java_home,
) inherits dse::datastax_agent::datastax_agent_default::params {
  anchor { 'dse::datastax_agent::datastax_agent_default::begin': } ->
  class { '::dse::datastax_agent::datastax_agent_default::config': } ->
  anchor { 'dse::datastax_agent::datastax_agent_default::end': }
}
