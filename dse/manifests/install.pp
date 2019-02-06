# == Class: dse::install
#
# Installs the DSE application. In this case it's a NOOP.
#
# === Authors
#
# Christopher Bradford <christopher.bradford@datastax.com>
#
# === Copyright
#
# Copyright 2016 Christopher Bradford
#
class dse::install {
  # notify { 'dse::install':
  #   #   message => 'DSE installation is managed by another team.'
  $dseversion = '5.0.15' #TODO see if we can get this on the command line
  #TODO can we get this to do a tarball installation?
  include java
  case $::osfamily {
      'RedHat' :{
        notify {'dse::install':
          message => "os family is ${osfamily}"
        }
        yumrepo { 'datastax':
          enabled  => 1,
          descr    => 'DataStax Repo for DataStax Enterprise',
          baseurl  => 'https://james.colvin%40datastax.com:abc123@rpm.datastax.com/enterprise',
          gpgcheck => 0,
        }
        package {'epel-release':
          ensure => 'installed',
        }
        package { "dse-full-${dseversion}-1" :
          ensure => 'installed',
          require => Yumrepo['datastax']
        }
      }
      'Debian' :{
        include apt
        notify {'dse::install':
          message => "os family is ${osfamily}"
        }
        apt::source { 'datastax':
          ensure => 'present',
          comment  => 'DataStax Repo for DataStax Enterprise',
          location => 'https://james.colvin%40datastax.com:abc123@debian.datastax.com/enterprise',
          # gpgcheck => 0,
          release  => 'stable',
          repos => 'main',
        }
        apt::key { 'datastax':
          ensure => 'present',
          server => 'https://debian.datastax.com/debian/repo_key',
        }
        # Exec['apt_update']
        package{["dse-full=${dseversion}-1","dse-libhadoop2-client=${dseversion}-1","dse-libhadoop2-client-native=${dseversion}-1",
          "dse=${dseversion}-1","dse-hive=${dseversion}-1","dse-libtomcat=${dseversion}-1","dse-libsqoop=${dseversion}-1",
          "dse-liblog4j=${dseversion}-1","dse-pig=${dseversion}-1","dse-libsolr=${dseversion}-1","dse-libmahout=${dseversion}-1",
          "dse-libhadoop-native=${dseversion}-1","dse-libcassandra=${dseversion}-1","dse-libhive=${dseversion}-1","dse-libpig=${dseversion}-1",
          "dse-libhadoop=${dseversion}-1","dse-libspark=${dseversion}-1","dse-libgraph=${dseversion}-1"]:
          ensure => 'installed'
        }
      }
      default: {fail("operating system ${osfamily} not supported")}
    }
  }