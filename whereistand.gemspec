# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{whereistand}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["whereIstand"]
  s.date = %q{2010-10-30}
  s.description = %q{whereIstand Ruby SDK}
  s.email = %q{help@whereistand.com}
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.rdoc", "lib/client/accounts.rb", "lib/client/issues.rb", "lib/client/opinions.rb", "lib/client/tools.rb", "lib/dom/account.rb", "lib/dom/account_issues.rb", "lib/dom/account_results.rb", "lib/dom/approved_opinion.rb", "lib/dom/evidenced_opinion.rb", "lib/dom/expressed_opinion.rb", "lib/dom/issue.rb", "lib/dom/issue_accounts.rb", "lib/dom/issue_result.rb", "lib/dom/issue_results.rb", "lib/dom/opinion.rb", "lib/dom/results.rb", "lib/dom/unknown_opinion.rb", "lib/dom/unverified_opinion.rb", "lib/whereistand.rb"]
  s.files = ["CHANGELOG", "Gemfile", "Gemfile.lock", "LICENSE", "Manifest", "README.rdoc", "Rakefile", "lib/client/accounts.rb", "lib/client/issues.rb", "lib/client/opinions.rb", "lib/client/tools.rb", "lib/dom/account.rb", "lib/dom/account_issues.rb", "lib/dom/account_results.rb", "lib/dom/approved_opinion.rb", "lib/dom/evidenced_opinion.rb", "lib/dom/expressed_opinion.rb", "lib/dom/issue.rb", "lib/dom/issue_accounts.rb", "lib/dom/issue_result.rb", "lib/dom/issue_results.rb", "lib/dom/opinion.rb", "lib/dom/results.rb", "lib/dom/unknown_opinion.rb", "lib/dom/unverified_opinion.rb", "lib/whereistand.rb", "spec/client_accounts_spec.rb", "spec/client_issues_spec.rb", "spec/client_opinions_spec.rb", "whereistand.gemspec"]
  s.homepage = %q{http://github.com/whereIstand/ruby-sdk}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Whereistand", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{whereistand}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{whereIstand Ruby SDK}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<yajl-ruby>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
