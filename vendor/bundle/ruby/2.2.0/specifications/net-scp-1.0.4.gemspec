# -*- encoding: utf-8 -*-
# stub: net-scp 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "net-scp"
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jamis Buck", "Delano Mandelbaum"]
  s.date = "2010-08-17"
  s.description = "A pure Ruby implementation of the SCP client protocol"
  s.email = "net-scp@solutious.com"
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "lib/net/scp/download.rb", "lib/net/scp/errors.rb", "lib/net/scp/upload.rb", "lib/net/scp/version.rb", "lib/net/scp.rb", "lib/uri/open-scp.rb", "lib/uri/scp.rb", "README.rdoc"]
  s.files = ["CHANGELOG.rdoc", "README.rdoc", "lib/net/scp.rb", "lib/net/scp/download.rb", "lib/net/scp/errors.rb", "lib/net/scp/upload.rb", "lib/net/scp/version.rb", "lib/uri/open-scp.rb", "lib/uri/scp.rb"]
  s.homepage = "http://net-ssh.rubyforge.org/scp"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Net-scp", "--main", "README.rdoc"]
  s.rubyforge_project = "net-ssh"
  s.rubygems_version = "2.4.5.1"
  s.summary = "A pure Ruby implementation of the SCP client protocol"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-ssh>, [">= 1.99.1"])
    else
      s.add_dependency(%q<net-ssh>, [">= 1.99.1"])
    end
  else
    s.add_dependency(%q<net-ssh>, [">= 1.99.1"])
  end
end
