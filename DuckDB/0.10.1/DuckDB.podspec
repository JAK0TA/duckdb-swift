Pod::Spec.new do |spec|
  spec.name         = "DuckDB"
  spec.version      = "0.10.1"
  spec.summary      = "Summary of DuckDB"
  spec.homepage     = "https://example.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Your Name" => "your@email.com" }
  spec.source       = { :git => "https://github.com/JAK0TA/duckdb-swift.git", :tag => 'v0.10.1-dev949'}

  spec.ios.deployment_target = '12.0'
  spec.osx.deployment_target = '10.14'


  spec.source_files = 'Sources/**/*{.h, .swift}'
  spec.public_header_files = 'Sources/**/*.h'

  spec.cocoapods_version = '>= 1.10.0'

  # spec.dependency 'Cduckdb'
end