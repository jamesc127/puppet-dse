# == Class: dse::dse_yaml
#
# Manages the DSE specific configuration. This file includes Spark resources
# ratio.
#
# === Parameters
#
# [*path*]
#   Path to the configuration file on disk.
#   Default: /etc/dse/cassandra/conf/cassandra.yaml
#
# [*max_memory_to_lock_fraction*]
#   Maximum memory to lock for in-memory data (fraction of total system RAM)
#   Default: undef - 0.2
#
# [*max_memory_to_lock_mb*]
#   Maximum amount of memory to lock for in-memory data (overrides fraction)
#   Default: undef
#
# [*max_solr_concurrency_per_core*]
#   Default: undef
#
# [*solr_indexing_error_log_options_enabled*]
#   Default: undef
#
# === Examples
#
#  class { 'dse::dse_yaml':
#  }
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::dse_yaml (
  $path = $dse::dse_yaml::params::path,
  $max_memory_to_lock_fraction = $dse::dse_yaml::params::max_memory_to_lock_fraction,
  $max_memory_to_lock_mb = $dse::dse_yaml::params::max_memory_to_lock_mb,
  $max_solr_concurrency_per_core = $dse::dse_yaml::params::max_solr_concurrency_per_core,
  $solr_indexing_error_log_options_enabled = $dse::dse_yaml::params::solr_indexing_error_log_options_enabled,
  $resource_level_latency_tracking_options_enabled = $dse::dse_yaml::params::resource_level_latency_tracking_options_enabled,
  $resource_level_latency_tracking_options_refresh_rate_ms = $dse::dse_yaml::params::resource_level_latency_tracking_options_refresh_rate_ms,
  $cluster_summary_stats_options_enabled = $dse::dse_yaml::params::cluster_summary_stats_options_enabled,
  $cluster_summary_stats_options_refresh_rate_ms = $dse::dse_yaml::params::cluster_summary_stats_options_refresh_rate_ms,
  $db_summary_stats_options_enabled = $dse::dse_yaml::params::db_summary_stats_options_enabled,
  $db_summary_stats_options_refresh_rate_ms = $dse::dse_yaml::params::db_summary_stats_options_refresh_rate_ms,
  $histogram_data_options_enabled = $dse::dse_yaml::params::histogram_data_options_enabled,
  $histogram_data_options_refresh_rate_ms = $dse::dse_yaml::params::histogram_data_options_refresh_rate_ms,
  $user_level_latency_tracking_options_enabled = $dse::dse_yaml::params::user_level_latency_tracking_options_enabled,
  $user_level_latency_tracking_options_refresh_rate_ms = $dse::dse_yaml::params::user_level_latency_tracking_options_refresh_rate_ms
) inherits dse::dse_yaml::params {
  anchor { 'dse::dse_yaml::begin': } ->
  class { '::dse::dse_yaml::config': } ->
  anchor { 'dse::dse_yaml::end': }
}
