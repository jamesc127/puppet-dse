node default {
  # Define role base on hiera content
  # $role = hiera('role', 'bootstrap')
  $role = lookup('role',undef,undef,'bootstrap')
  # $cluster = hiera('cluster', 'unassigned')
  $cluster = lookup('cluster',undef,undef,'unassigned')
  # Include classes defined in heira
  hiera_include('classes')
  # lookup('classes', {merge => unique}).include
}
