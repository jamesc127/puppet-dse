class dse::opscenter::clusters (
  $clusters = $dse::opscenter::clusters::params::clusters,
) inherits dse::opscenter::clusters::params {
  anchor { 'dse::opscenter::clusters::begin': } ->
  class { '::dse::opscenter::clusters::config': } ->
  anchor { 'dse::opscenter::clusters::end': }
}
