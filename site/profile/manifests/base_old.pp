#class profile::base (Array $ntpdata = [], Array $ipdata = []) 
class profile::base (
  Array $ntpdata = [ 'server value1.myserver.com', 
    'server value2.myserver.com', 
    'server value3.myaerver.com', ],
  Array $ipdata = [ '0.0.0.0', 
    '1.1.1.1',
    '2.2.2.2', ]
)
{
  file { '/etc/ntptest.conf':
    ensure  => file,
    content => inline_epp('<% $ntpdata.each |$line| { -%> <%= "$line\n" %><% } -%>')
  }
  file { '/etc/cron.denytest':
    ensure  => file,
    content => inline_epp('<% $ipdata.each |$line| { -%> <%= "$line\n" %><% } -%>')
  }
}

