package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

package 'git' do
  action :install
end

host=node['ec2']['hostname']
public_ip=node['ec2']['public_ipv4']
ip=node['ipaddress']
cpu=node['cpu']['0']['mhz']
memory=node['memory']['total']


file '/etc/motd' do
  content "This server is the property of Koushik Mitra!!
HOSTNAME : #{host}
PUBLIC IPADDRESS : #{public_ip}
IPADDRESS: #{ip}
CPU : #{cpu}
MEMORY : #{memory}
"
  owner 'root'
  group 'root'
  action :create
end
