class dse::opscenter::opscenterd_conf (
  $path = $dse::opscenter::opscenterd_conf::params::path,
  $user = $dse::opscenter::opscenterd_conf::params::user,
  $group = $dse::opscenter::opscenterd_conf::params::group,
  $webserver_port = $dse::opscenter::opscenterd_conf::params::webserver_port,
  $webserver_interface = $dse::opscenter::opscenterd_conf::params::webserver_interface,
  $webserver_ssl_keyfile = $dse::opscenter::opscenterd_conf::params::webserver_ssl_keyfile,
  $webserver_ssl_certfile = $dse::opscenter::opscenterd_conf::params::webserver_ssl_certfile,
  $webserver_ssl_port = $dse::opscenter::opscenterd_conf::params::webserver_ssl_port,
  $authentication_enabled = $dse::opscenter::opscenterd_conf::params::authentication_enabled,
  $stats_reporter_interval = $dse::opscenter::opscenterd_conf::params::stats_reporter_interval,
  $definitions_auto_update = $dse::opscenter::opscenterd_conf::params::definitions_auto_update,
  $labs_enable_dashboard_preset_import_export = $dse::opscenter::opscenterd_conf::params::labs_enable_dashboard_preset_import_export,
  $agents_http_poll_period = $dse::opscenter::opscenterd_conf::params::agents_http_poll_period,
  $agents_not_seen_threshold = $dse::opscenter::opscenterd_conf::params::agents_not_seen_threshold
) inherits dse::opscenter::opscenterd_conf::params {
  anchor { 'dse::opscenter::opscenterd_conf::begin': } ->
  class { '::dse::opscenter::opscenterd_conf::config': } ->
  anchor { 'dse::opscenter::opscenterd_conf::end': }
}
