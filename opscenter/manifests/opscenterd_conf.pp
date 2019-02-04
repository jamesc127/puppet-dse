class opscenter::opscenterd_conf (
  $path = $opscenter::opscenterd_conf::params::path,
  $user = $opscenter::opscenterd_conf::params::user,
  $group = $opscenter::opscenterd_conf::params::group,
  $webserver_port = $opscenter::opscenterd_conf::params::webserver_port,
  $webserver_interface = $opscenter::opscenterd_conf::params::webserver_interface,
  $webserver_ssl_keyfile = $opscenter::opscenterd_conf::params::webserver_ssl_keyfile,
  $webserver_ssl_certfile = $opscenter::opscenterd_conf::params::webserver_ssl_certfile,
  $webserver_ssl_port = $opscenter::opscenterd_conf::params::webserver_ssl_port,
  $authentication_enabled = $opscenter::opscenterd_conf::params::authentication_enabled,
  $stats_reporter_interval = $opscenter::opscenterd_conf::params::stats_reporter_interval,
  $definitions_auto_update = $opscenter::opscenterd_conf::params::definitions_auto_update,
  $labs_enable_dashboard_preset_import_export = $opscenter::opscenterd_conf::params::labs_enable_dashboard_preset_import_export,
  $agents_http_poll_period = $opscenter::opscenterd_conf::params::agents_http_poll_period,
  $agents_not_seen_threshold = $opscenter::opscenterd_conf::params::agents_not_seen_threshold
) inherits opscenter::opscenterd_conf::params {
  anchor { 'opscenter::opscenterd_conf::begin': } ->
  class { '::opscenter::opscenterd_conf::config': } ->
  anchor { 'opscenter::opscenterd_conf::end': }
}
