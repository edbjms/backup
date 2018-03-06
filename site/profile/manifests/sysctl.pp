class profile::sysctl (
  Hash $sysctldata = {}
)
{
  file { '/etc/sysctl.conf':
    ensure  => file,
    content => 
       inline_epp('<% $sysctldata.each |$key,$value| { -%> <%= "$key: $value\n" %><% } -%>')
  }
}
