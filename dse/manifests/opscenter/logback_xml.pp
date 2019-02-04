class dse::opscenter::logback_xml (
  $path = $dse::opscenter::logback_xml::params::path,
  $user = $dse::opscenter::logback_xml::params::user,
  $group = $dse::opscenter::logback_xml::params::group,
  $log_directory = $dse::opscenter::logback_xml::params::log_directory,
) inherits dse::opscenter::logback_xml::params {
  anchor { 'dse::opscenter::logback_xml::begin': } ->
  class { '::dse::opscenter::logback_xml::config': } ->
  anchor { 'dse::opscenter::logback_xml::end': }
}
