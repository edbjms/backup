class profile::base (
  Array $ntpdata = [], 
  Array $ipdata = [],
)
{
  file { '/etc/ntp.conf':
    ensure  => file,
    content => inline_epp('<% $ntpdata.each |$data| { -%> <%= "server $data\n" %><% } -%>')
  }
  file { '/etc/cron.deny':
    ensure  => file,
    content => inline_epp('<% $ipdata.each |$data| { -%> <%= "$data\n" %><% } -%>')
  }
}

