agents = {
  'lon-agent' => 'puppetlabs/ubuntu-16.04-64-nocm',
  'nyc-agent' => 'puppetlabs/centos-7.2-64-nocm',
}

Vagrant.configure(2) do |config|
  config.vm.define 'pdx-master' do |master|
    master.vm.box = 'puppetlabs/centos-7.2-64-nocm'
    master.vm.provider 'virtualbox' do |v|
      v.memory = 8192
      v.cpus   = 4
    end

    master.vm.hostname = 'pdx-master'
    master.vm.network :private_network, ip: '10.20.1.2'
    master.vm.provision :hosts, sync_hosts: true
  end

  config.vm.define 'lon-agent' do |node|
    node.vm.box = 'puppetlabs/ubuntu-16.04-64-nocm'
    node.vm.hostname = 'lon-agent'
    node.vm.network :private_network, ip: '10.20.1.3'
    node.vm.provision :hosts, sync_hosts: true
  end
  config.vm.define 'nyc-agent' do |node|
    node.vm.box = 'puppetlabs/centos-7.2-64-nocm'
    node.vm.hostname = 'nyc-agent'
    node.vm.network :private_network, ip: '10.20.1.4'
    node.vm.provision :hosts, sync_hosts: true
  end
end
