

# Pod::Spec.new do |spec|
#   spec.name         = "Cduckdb"
#   spec.version      = "0.10.1"
#   spec.summary      = "Summary of Cduckdb"
#   spec.homepage     = "https://example.com"
#   spec.license      = { :type => "MIT", :file => "LICENSE" }
#   spec.author       = { "Your Name" => "your@email.com" }
#   spec.source       = { :git => "https://github.com/JAK0TA/duckdb-swift.git", :tag => 'v0.10.1-dev949'}

#   spec.source_files = 'Sources/Cduckdb/include/*.h'
#   spec.public_header_files = 'Sources/Cduckdb/include/*.h'

#   spec.cocoapods_version = '>= 1.10.0'

#   spec.ios.deployment_target = '12.0'
#   spec.osx.deployment_target = '10.14'
#   spec.library = "c++"




# end

Pod::Spec.new do |spec|
  spec.name         = "DuckDB"
  spec.version      = "0.10.1"
  spec.summary      = "Summary of DuckDB"
  spec.homepage     = "https://example.com"
  spec.license      = 'MIT'
  spec.author       = { "Your Name" => "your@email.com" }
  spec.source       = { :git => "https://github.com/JAK0TA/duckdb-swift.git", :tag => 'v0.10.1-dev949'}

  spec.ios.deployment_target = '12.0'
  spec.osx.deployment_target = '10.14'

  spec.swift_version = '5.0'

  spec.dependency 'Cduckdb'
  
  spec.subspec 'Cduckdb' do |cduckdb|
    cduckdb.source_files = 'Sources/Cduckdb/include/*.h'
    cduckdb.public_header_files = 'Sources/Cduckdb/include/*.h'
    cduckdb.library = "c++"

    cduckdb.xcconfig = {
      'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/Sources/Cduckdb"'
    }
    cduckdb.pod_target_xcconfig = {
      'HEADER_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/Sources/Cduckdb"'
    }
  end


  spec.subspec 'DuckDB' do |duckdb|
    duckdb.dependency 'DuckDB/Cduckdb'
    duckdb.source_files = 'Sources/**/*.swift'
    duckdb.public_header_files = 'Sources/**/*.h'

  end

end
