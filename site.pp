node default {
  # Define role base on hiera content
  # $role = hiera('role', 'bootstrap')
  $role = lookup('role', 'bootstrap')
  # $cluster = hiera('cluster', 'unassigned')
  $cluster = lookup('cluster', 'unassigned')
  # Include classes defined in heira
  # hiera_include('classes')
  lookup('classes', {merge => unique}).include
}
