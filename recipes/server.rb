#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2018 The Authors, All Rights Reserved.


package 'httpd' do
	action :install
end

#file '/var/www/html/index.html' do
#content '<h1>Hello world</h1>'
#action :create
#end

#cookbook_file '/var/www/html/index.html' do
#	source 'index.html'
#end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end

service 'httpd' do
	action [ :enable, :restart ]
end


