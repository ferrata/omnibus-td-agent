name "td-agent"
#version '' # git ref

dependency "jemalloc"
dependency "ruby"
dependency "fluentd"
dependency "nokogiri"

env = {}

build do
  Dir.glob(File.expand_path(File.join(project_root, 'plugin_gems', '*.gem'))).sort.each { |gem_path|
    #command "#{install_dir}/ruby/bin/gem install --no-ri --no-rdoc #{gem_path}", :env => env
    gem "install --no-ri --no-rdoc #{gem_path}", :env => env
  }
end
