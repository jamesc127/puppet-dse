define dse::opscenter::cluster(
  $cluster_name,
  $path,
  $user = 'cassandra',
  $group = 'cassandra',
  $jmx_username = undef,
  $jmx_password = undef,
  $jmx_port = undef,
  $agents_http_timeout = undef,
  $collection_nodelist_poll_period = undef,
  $cassandra_seed_hosts = [],
  $cassandra_cql_port = undef,
  $cassandra_username = undef,
  $cassandra_password = undef,
  $storage_cassandra_local_dc_pref = undef,
  $storage_cassandra_keyspace = undef,
  $storage_cassandra_seed_hosts = undef,
  $storage_cassandra_username = undef,
  $storage_cassandra_password = undef,
) {
  file { $path :
    ensure  => present,
    path    => $path,
    owner   => $user,
    group   => $group,
    mode    => '0644',
    content => template('dse/opscenter/cluster.conf.erb')
  }
}
