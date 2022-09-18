# Creates an ssh config file to bypass passphrase
#!/use/bin/env bash
file { '~/.ssh/config':
  ensure  => present,
  path    => '~/.ssh/config',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => "Host *   PasswordAuthentication no\n    IdentityFile ~/.ssh/school\n    SendEnv LANG LC_*\n    HashKnownHosts yes\n    GSSAPIAuthentication yes\n    GSSAPIDelegateCredentials no"
}
