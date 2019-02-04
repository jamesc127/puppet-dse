class dse::datastax_agent::log4j_properties (
  $path = $dse::datastax_agent::log4j_properties::params::path,
  $log_directory = $dse::datastax_agent::log4j_properties::params::log_directory
) inherits dse::datastax_agent::log4j_properties::params {
  anchor { 'dse::datastax_agent::log4j_properties::begin': } ->
  class { '::dse::datastax_agent::log4j_properties::config': } ->
  anchor { 'dse::datastax_agent::log4j_properties::end': }
}
