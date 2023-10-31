# @summary A role class to setup a puppet_server
#
# This includes the profiles needed to setup a puppet_server
#
# @example
#   include role::puppet_server
class role::puppet_server {
  include profile::base
  include profile::linux::base
  class { 'profile::puppet::puppet_server':
    min_heap_size     => lookup('puppetserver::min_heap_size', '512m'),
    max_heap_size     => lookup('puppetserver::max_heap_size', '512m'),
    r10k_control_repo => lookup('puppetserver::r10k_control_repo', '')
  }
}
