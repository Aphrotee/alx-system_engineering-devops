# Create a file called school in the /tmp directory
file { '/tmp/school':
  ensure  => present,
  path    => '/tmp/school',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet'
}
