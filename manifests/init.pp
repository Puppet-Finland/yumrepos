#
# == Class: yumrepos
#
# Set up yum repos. This class is a simple wrapper around the yumrepo resource 
# and is primarily aimed for use with Foreman.
#
# == Parameters
#
# [*yumrepos*]
#   An array of yumrepos to generate. See Puppet Type Reference for information 
#   on the available parameter for each yumrepo resource.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class yumrepos
(
    $yumrepos = {}

) inherits yumrepos::params
{

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_yumrepos', 'true') != 'false' {

    create_resources('yumrepo', $yumrepos)
}
}
