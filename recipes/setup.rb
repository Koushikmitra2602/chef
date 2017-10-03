package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content 'This server is the property of Koushik Mitra!!'
  owner 'root'
  group 'root'
  action :create
end
