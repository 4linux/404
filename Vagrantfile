image = 'gusztavvargadr/ubuntu-desktop' #solarium/debian-buster-xfce

vms = {
 'shell' => {'memory' => '1024', 'cpus' => '1', 'ip' => '10', 'box' => "#{image}"},
 #'database' => {'memory' => '512', 'cpus' => '1', 'ip' => '11', 'box' => "#{image}"}
}

Vagrant.configure('2') do |config|
  vms.each do |name, conf|
     config.vm.define "#{name}" do |my|
       my.vm.box = conf['box']
       my.vm.hostname = "#{name}.example.com"
       my.vm.network 'private_network', ip: "172.27.11.#{conf['ip']}"
       my.vm.provider 'virtualbox' do |vb|
          vb.memory = conf['memory']
          vb.gui = true
          if "#{name}" == "shell"
            vb.gui = false
          end
          vb.name = "#{name}"
          vb.cpus = conf['cpus']
          vb.customize ["modifyvm", :id, "--usb", "off"]
          vb.customize ["modifyvm", :id, "--usbehci", "off"]
       end
     end
  end
end
