# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{address_book}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason LaPier", "Jeremiah Heller"]
  s.date = %q{2010-10-27}
  s.description = %q{Provides basic contact management features with versioned history of changes.}
  s.email = ["jason.lapier@gmail.com", "jeremiah@inertialbit.net"]
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "Gemfile",
     "Gemfile.lock",
     "README",
     "Rakefile",
     "VERSION",
     "app/controllers/address_book/application_controller.rb",
     "app/controllers/application_controller.rb",
     "app/controllers/contact_revisions_controller.rb",
     "app/controllers/contacts_controller.rb",
     "app/controllers/phone_number_revisions_controller.rb",
     "app/controllers/phone_numbers_controller.rb",
     "app/controllers/rescue_from_not_found.rb",
     "app/helpers/address_book/application_helper.rb",
     "app/helpers/contact_revisions_helper.rb",
     "app/helpers/contacts_helper.rb",
     "app/helpers/phone_number_revisions_helper.rb",
     "app/helpers/phone_numbers_helper.rb",
     "app/models/contact.rb",
     "app/models/contact_class_methods.rb",
     "app/models/contact_instance_methods.rb",
     "app/models/contact_revision.rb",
     "app/models/deletable_instance_methods.rb",
     "app/models/phone_number.rb",
     "app/models/phone_number_revision.rb",
     "app/views/address-book-shared/_flash.html.erb",
     "app/views/address-book-shared/_navigation.html.erb",
     "app/views/contact_revisions/_navigation.html.erb",
     "app/views/contact_revisions/index.html.erb",
     "app/views/contact_revisions/show.html.erb",
     "app/views/contacts/_browse_contact_revisions.html.erb",
     "app/views/contacts/_contact_details.html.erb",
     "app/views/contacts/_form.html.erb",
     "app/views/contacts/_navigation.html.erb",
     "app/views/contacts/_search.html.erb",
     "app/views/contacts/edit.html.erb",
     "app/views/contacts/index.html.erb",
     "app/views/contacts/new.html.erb",
     "app/views/contacts/show.html.erb",
     "app/views/layouts/address-book.html.erb",
     "app/views/phone_number_revisions/_navigation.html.erb",
     "app/views/phone_number_revisions/index.html.erb",
     "app/views/phone_number_revisions/show.html.erb",
     "app/views/phone_numbers/_browse_phone_number_revisions.html.erb",
     "app/views/phone_numbers/_contacts_form.html.erb",
     "app/views/phone_numbers/_form.html.erb",
     "app/views/phone_numbers/_navigation.html.erb",
     "app/views/phone_numbers/_phone_details.html.erb",
     "app/views/phone_numbers/edit.html.erb",
     "app/views/phone_numbers/index.html.erb",
     "app/views/phone_numbers/new.html.erb",
     "app/views/phone_numbers/show.html.erb",
     "config/application.rb",
     "config/boot.rb",
     "config/cucumber.yml",
     "config/database.example.yml",
     "config/database.yml",
     "config/environment.rb",
     "config/environments/cucumber.rb",
     "config/environments/development.rb",
     "config/environments/production.rb",
     "config/environments/test.rb",
     "config/initializers/backtrace_silencers.rb",
     "config/initializers/formtastic.rb",
     "config/initializers/inflections.rb",
     "config/initializers/mime_types.rb",
     "config/initializers/secret_token.rb",
     "config/initializers/session_store.rb",
     "config/locales/en.yml",
     "config/routes.rb",
     "db/migrate/20100902163926_create_contacts.rb",
     "db/migrate/20100902172950_create_phone_numbers.rb",
     "db/migrate/20100905192124_make_contacts_revisable.rb",
     "db/migrate/20100905193525_add_phone_book_to_contacts.rb",
     "db/migrate/20100906222040_make_phone_numbers_revisable.rb",
     "db/migrate/20100906223123_add_reverse_phonebook_to_phone_numbers.rb",
     "db/migrate/20100909205012_add_index_on_phone_number_country_code_extension.rb",
     "db/schema.rb",
     "db/seeds.rb",
     "lib/address_book.rb",
     "lib/address_book/engine.rb",
     "lib/generators/address_book/install/USAGE",
     "lib/generators/address_book/install/install_generator.rb",
     "lib/generators/address_book/install/templates/address_book.rake",
     "lib/tasks/cucumber.rake",
     "public/404.html",
     "public/422.html",
     "public/500.html",
     "public/favicon.ico",
     "public/images/rails.png",
     "public/javascripts/application.js",
     "public/javascripts/behaviors.js",
     "public/javascripts/jquery-1.4.1.min.js",
     "public/javascripts/jquery-ui-1.7.2.custom.min.js",
     "public/javascripts/jquery.clonePosition.js",
     "public/javascripts/jquery.qtip-1.0.0-rc3.js",
     "public/javascripts/jquery.string.1.0-min.js",
     "public/javascripts/jquery.tablesorter.min.js",
     "public/javascripts/lowpro.jquery.js",
     "public/javascripts/rails.js",
     "public/robots.txt",
     "public/stylesheets/address_book.css",
     "public/stylesheets/blueprint/grid.css",
     "public/stylesheets/blueprint/ie.css",
     "public/stylesheets/blueprint/oldgrid.css",
     "public/stylesheets/blueprint/plugins/buttons/icons/cross.png",
     "public/stylesheets/blueprint/plugins/buttons/icons/key.png",
     "public/stylesheets/blueprint/plugins/buttons/icons/tick.png",
     "public/stylesheets/blueprint/plugins/buttons/readme.txt",
     "public/stylesheets/blueprint/plugins/buttons/screen.css",
     "public/stylesheets/blueprint/plugins/fancy-type/readme.txt",
     "public/stylesheets/blueprint/plugins/fancy-type/screen.css",
     "public/stylesheets/blueprint/plugins/link-icons/icons/doc.png",
     "public/stylesheets/blueprint/plugins/link-icons/icons/email.png",
     "public/stylesheets/blueprint/plugins/link-icons/icons/external.png",
     "public/stylesheets/blueprint/plugins/link-icons/icons/feed.png",
     "public/stylesheets/blueprint/plugins/link-icons/icons/im.png",
     "public/stylesheets/blueprint/plugins/link-icons/icons/pdf.png",
     "public/stylesheets/blueprint/plugins/link-icons/icons/visited.png",
     "public/stylesheets/blueprint/plugins/link-icons/icons/xls.png",
     "public/stylesheets/blueprint/plugins/link-icons/readme.txt",
     "public/stylesheets/blueprint/plugins/link-icons/screen.css",
     "public/stylesheets/blueprint/plugins/rtl/readme.txt",
     "public/stylesheets/blueprint/plugins/rtl/screen.css",
     "public/stylesheets/blueprint/plugins/silksprite/sprite.css",
     "public/stylesheets/blueprint/plugins/silksprite/sprites.png",
     "public/stylesheets/blueprint/print.css",
     "public/stylesheets/blueprint/screen.css",
     "public/stylesheets/formtastic.css",
     "public/stylesheets/formtastic_changes.css",
     "spec/controllers/contact_revisions_controller_spec.rb",
     "spec/controllers/contacts_controller_spec.rb",
     "spec/controllers/phone_number_revisions_controller_spec.rb",
     "spec/controllers/phone_numbers_controller_spec.rb",
     "spec/controllers/rescue_from_not_found_spec.rb",
     "spec/fixtures/address_book_contacts.yml",
     "spec/helpers/phone_numbers_helper_spec.rb",
     "spec/models/contact_class_methods_spec.rb",
     "spec/models/contact_instance_methods_spec.rb",
     "spec/models/contact_revision_spec.rb",
     "spec/models/contact_spec.rb",
     "spec/models/deletable_instance_methods_spec.rb",
     "spec/models/phone_number_revision_spec.rb",
     "spec/models/phone_number_spec.rb",
     "spec/rcov.opts",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/spec_helpers/controllers.rb",
     "spec/spec_helpers/mocks.rb",
     "test/performance/browsing_test.rb",
     "test/test_helper.rb",
     "vendor/plugins/searchable_by/MIT-LICENSE",
     "vendor/plugins/searchable_by/README",
     "vendor/plugins/searchable_by/Rakefile",
     "vendor/plugins/searchable_by/init.rb",
     "vendor/plugins/searchable_by/install.rb",
     "vendor/plugins/searchable_by/lib/searchable_by.rb",
     "vendor/plugins/searchable_by/tasks/searchable_by_tasks.rake",
     "vendor/plugins/searchable_by/test/boot.rb",
     "vendor/plugins/searchable_by/test/database.yml",
     "vendor/plugins/searchable_by/test/fixtures/companies.yml",
     "vendor/plugins/searchable_by/test/fixtures/company.rb",
     "vendor/plugins/searchable_by/test/fixtures/employee.rb",
     "vendor/plugins/searchable_by/test/fixtures/employees.yml",
     "vendor/plugins/searchable_by/test/fixtures/schema.rb",
     "vendor/plugins/searchable_by/test/helper.rb",
     "vendor/plugins/searchable_by/test/lib/activerecord_test_case.rb",
     "vendor/plugins/searchable_by/test/lib/activerecord_test_connector.rb",
     "vendor/plugins/searchable_by/test/lib/load_fixtures.rb",
     "vendor/plugins/searchable_by/test/searchable_by_test.rb",
     "vendor/plugins/searchable_by/uninstall.rb"
  ]
  s.homepage = %q{http://github.com/inertialbit/address-book}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple versioned contact management for Rails 3.}
  s.test_files = [
    "spec/controllers/contact_revisions_controller_spec.rb",
     "spec/controllers/contacts_controller_spec.rb",
     "spec/controllers/phone_number_revisions_controller_spec.rb",
     "spec/controllers/phone_numbers_controller_spec.rb",
     "spec/controllers/rescue_from_not_found_spec.rb",
     "spec/helpers/phone_numbers_helper_spec.rb",
     "spec/models/contact_class_methods_spec.rb",
     "spec/models/contact_instance_methods_spec.rb",
     "spec/models/contact_revision_spec.rb",
     "spec/models/contact_spec.rb",
     "spec/models/deletable_instance_methods_spec.rb",
     "spec/models/phone_number_revision_spec.rb",
     "spec/models/phone_number_spec.rb",
     "spec/spec_helper.rb",
     "spec/spec_helpers/controllers.rb",
     "spec/spec_helpers/mocks.rb",
     "test/performance/browsing_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.1"])
      s.add_runtime_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
      s.add_runtime_dependency(%q<formtastic>, [">= 0"])
      s.add_runtime_dependency(%q<acts_as_revisable>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.0.1"])
      s.add_development_dependency(%q<cucumber-rails>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<acts_as_fu>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.1"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
      s.add_dependency(%q<formtastic>, [">= 0"])
      s.add_dependency(%q<acts_as_revisable>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 2.0.1"])
      s.add_dependency(%q<cucumber-rails>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<acts_as_fu>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.1"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
    s.add_dependency(%q<formtastic>, [">= 0"])
    s.add_dependency(%q<acts_as_revisable>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 2.0.1"])
    s.add_dependency(%q<cucumber-rails>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<acts_as_fu>, [">= 0"])
  end
end

