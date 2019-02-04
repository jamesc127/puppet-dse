# == Class: dse::dse_yaml::params
#
# Manages DSE dse.yaml default parameters. These are consumed by dse::dse_yaml.
# These values should be overridden with parameters passed to
# dse::dse_yaml::config.
#
# Note parameters exposed through Puppet are intentionally kept minimal and only
# reflect changes made within this environment.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford, unless otherwise noted.
#
class dse::dse_yaml::params {
  $path = '/etc/dse/dse.yaml'
  $max_memory_to_lock_fraction = undef
  $max_memory_to_lock_mb = undef
  $max_solr_concurrency_per_core = undef
  $solr_indexing_error_log_options_enabled = undef
  $resource_level_latency_tracking_options_enabled = false
  $resource_level_latency_tracking_options_refresh_rate_ms = 10000
  $cluster_summary_stats_options_enabled = false
  $cluster_summary_stats_options_refresh_rate_ms = 10000
  $db_summary_stats_options_enabled = false
  $db_summary_stats_options_refresh_rate_ms = 10000
  $histogram_data_options_enabled = false
  $histogram_data_options_refresh_rate_ms = 10000
  $user_level_latency_tracking_options_enabled = false
  $user_level_latency_tracking_options_refresh_rate_ms = 10000
}
