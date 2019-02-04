class datastax_agent::log4j_properties (
  $path = $datastax_agent::log4j_properties::params::path,
  $log_directory = $datastax_agent::log4j_properties::params::log_directory
) inherits datastax_agent::log4j_properties::params {
  anchor { 'datastax_agent::log4j_properties::begin': } ->
  class { '::datastax_agent::log4j_properties::config': } ->
  anchor { 'datastax_agent::log4j_properties::end': }
}
