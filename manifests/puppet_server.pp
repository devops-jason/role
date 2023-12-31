# @summary A role class to setup a puppet_server
#
# This includes the profiles needed to setup a puppet_server
#
# @example
#   include role::puppet_server
class role::puppet_server {
  include profile::base
  include profile::linux::base
  include profile::puppet::puppet_server
}
