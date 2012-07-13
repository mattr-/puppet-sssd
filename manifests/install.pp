class sssd::install {
    package { sssd:
        ensure => present,
        name   => $sssd::params::package_name
    }
}
