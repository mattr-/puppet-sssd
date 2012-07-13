class sssd::params {
    case $osfamily {
        /RedHat/: {
            $sssd_package_name = 'sssd'
            $sssd_client_package_name = 'sssd-client'
            $sssd_tools_package_name = 'sssd-tools'
            $sssd_service_name = 'sssd'
        }

        default: {
            fail("Unsupported OS Family: $osfamily")
        }
    }
}

