class sssd::service {
    service { 'sssd':
        name       => $sssd::params::sssd_service_name,
        ensure     => running,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        require    => Class["sssd::install"],
    }
}


