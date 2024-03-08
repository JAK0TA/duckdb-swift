Pod::Spec.new do |spec|
  spec.name         = "Cduckdb"
  spec.version      = "0.10.2"
  spec.summary      = "Summary of Cduckdb"
  spec.homepage     = "https://example.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Your Name" => "your@email.com" }
  spec.source       = { :git => "https://github.com/JAK0TA/duckdb-swift.git", :tag => 'v.0.10.2'}

  spec.source_files = 'Sources/Cduckdb/include/*.h'
  spec.public_header_files = 'Sources/Cduckdb/include/*.h'
  # spec.preserve_paths = 'Sources/Cduckdb/include/*.h'
  # spec.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Sources/Cduckdb/include/**" }

  spec.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-D DUCKDB_BUILD_LIBRARY -D DUCKDB_EXTENSION_PARQUET_LINKED -D DUCKDB_EXTENSION_ICU_LINKED -D DUCKDB_EXTENSION_JSON_LINKED'
  }

  spec.cocoapods_version = '>= 1.10.0'

  spec.ios.deployment_target = '12.0'
  spec.osx.deployment_target = '10.14'
  spec.library = "c++"


end