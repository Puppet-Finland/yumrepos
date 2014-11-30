#
# == Class: yumrepos::params
#
# Defines some variables based on the operating system
#
class yumrepos::params {

    case $::osfamily {
        'RedHat': {
            # Nothing here yet
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
