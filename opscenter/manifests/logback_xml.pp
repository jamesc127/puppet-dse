class opscenter::logback_xml (
  $path = $opscenter::logback_xml::params::path,
  $user = $opscenter::logback_xml::params::user,
  $group = $opscenter::logback_xml::params::group,
  $log_directory = $opscenter::logback_xml::params::log_directory,
) inherits opscenter::logback_xml::params {
  anchor { 'opscenter::logback_xml::begin': } ->
  class { '::opscenter::logback_xml::config': } ->
  anchor { 'opscenter::logback_xml::end': }
}
