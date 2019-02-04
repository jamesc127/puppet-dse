node default {
  # Define role base on hiera content
  $role = hiera('role', 'bootstrap')
  $cluster = hiera('cluster', 'unassigned')

  # Include classes defined in heira
  hiera_include('classes')
}
