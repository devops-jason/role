# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include role::mini_server
class role::mini_server {
  include profile::base
  include profile::linux::base
  include profile::puppet::puppet_server
}
