class deploy {
  secure_ssh::receiver_setup { 'deploy':
    user           => 'deploypuppet',
    foreman_search => 'host ~ node*.jenkins.osuosl.theforeman.org and (name = external_ip4 or name = external_ip6)',
    script_content => file('deploy/script.sh'),
  }
}
