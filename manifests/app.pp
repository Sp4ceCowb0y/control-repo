node 'node3' {

  #include base
  include tomcat
  class {'::tomcat':
      xms             => '60m',
      xmx             => '120m',
      user            => 'tomcat',
      group           => 'tomcat',
      service_state   => 'running'
  }
    
  tomcat::deploy { "sysfoo":
    deploy_url      => 'https://42-243470015-gh.circle-artifacts.com/0/tmp/artifacts/sysfoo.war',
    checksum_value  => '09af421c3f483c615ff587141a2806ab',
  }

}
