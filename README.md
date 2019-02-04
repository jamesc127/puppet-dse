# DSE Puppet Manifests

## Setting up a new node
1. Add an entry under `hiera/nodes/hostname.yaml`
2. Define the required parameters

   ```yaml
   role: analytics
   rack: local
   initial_token: 1
   cluster: unassigned
   ```
3. Have the Ops team run the configuration manifest on the host
4. *Optionally schedule the papply command in root's crontab*

## Changing a cluster setting
1. Identify the setting to override on the cluster level. *ex: `concurrent_writes` in cassandra.yaml which is controlled `dse::cassandra::cassandra_yaml::concurrent_writes`*
2. Set the value in `hiera/clusters/cluster_name.yaml`

*Example: Changing the concurrent_writes on cluster some_cluster, but not another_cluster*

```yaml
# hiera/clusters/some_cluster.yaml
dse::cassandra::cassandra_yaml::concurrent_writes: 256
```

In this case nodes in cluster some_cluster will receive the overridden value.

## Changing a node setting
1. Identify the setting to override on the node level. *ex: override `listen_address` in cassandra.yaml which is controlled `dse::cassandra::cassandra_yaml::listen_address`*
2. Set the value in `hiera/nodes/hostname.yaml`

*Example: Changing the listen_address on node some_host*

```yaml
# hiera/nodes/some_host.yaml
dse::cassandra::cassandra_yaml::listen_address: 127.0.0.1
```

## Changing a role setting
1. Identify the setting to override on the role level. *ex: override `data_directories` in cassandra.yaml which is controlled by `dse::cassandra::cassandra_yaml::data_directories`*
1. Set the value in `hiera/roles/role_name.yaml`

*Example: Changing the data_directories for analytics nodes to include the data2 mount*

```yaml
# hiera/roles/analytics.yaml
dse::cassandra::cassandra_yaml::data_directories:
  - "%{hiera('install_base')}/data"
  - "%{hiera('install_base')}/data2"
```

## Development Notes
### Applying Configuration
```bash
# With debug
puppet apply -l console --modulepath=./ --hiera_config ./hiera.yaml -d site.pp

# Without debug
puppet apply -l console --modulepath=./ --hiera_config ./hiera.yaml site.pp
```

### List Modules
```bash
puppet module list --modulepath=./
```

### Setup for Development
```bash
gem install bundler
bundle install
```
