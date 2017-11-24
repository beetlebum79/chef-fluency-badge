file 'default www' do
	path '/var/www/html/index.html'
	content 'test server-workstation'
end

webnodes = search('node', 'recipes:apache\:\:default')
#webnodes = search('node', 'role:web')

webnodes.each do |nodes|
	puts nodes
end
