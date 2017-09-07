class yum_proxy::config {

    file {'/etc/yum.conf':
        ensure => present    
    }

    file_line { 'Set yum proxy to pcaerpm':
        ensure => present,
        path => '/etc/yum.conf',
        line => 'proxy=http://pcaerpm.ciemat.es:8080',
        require => File['/etc/yum.conf'],
    
    }

}
