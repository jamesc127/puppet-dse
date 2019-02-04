class opscenter::clusters (
  $clusters = $opscenter::clusters::params::clusters,
) inherits opscenter::clusters::params {
  anchor { 'opscenter::clusters::begin': } ->
  class { '::opscenter::clusters::config': } ->
  anchor { 'opscenter::clusters::end': }
}
