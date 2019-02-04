class datastax_agent::datastax_agent_default (
  $path = $datastax_agent::datastax_agent_default::params::path,
  $java_home = $datastax_agent::datastax_agent_default::params::java_home,
) inherits datastax_agent::datastax_agent_default::params {
  anchor { 'datastax_agent::datastax_agent_default::begin': } ->
  class { '::datastax_agent::datastax_agent_default::config': } ->
  anchor { 'datastax_agent::datastax_agent_default::end': }
}
