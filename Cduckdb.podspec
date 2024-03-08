Pod::Spec.new do |spec|
  spec.name         = "Cduckdb"
  spec.version      = "0.10.2"
  spec.summary      = "Summary of Cduckdb"
  spec.homepage     = "https://example.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Your Name" => "your@email.com" }
  spec.source       = { :git => "https://github.com/JAK0TA/duckdb-swift.git", :tag => 'main'}

  spec.source_files = "Sources/Cduckdb/**/*.{swift,c,m,h,mm,cpp,plist}"
  spec.library = 'c++'
  spec.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }

  spec.public_header_files = 'Sources/Cduckdb/include/*.h'
  # spec.preserve_paths = 'Sources/Cduckdb/include/*.h'
  # spec.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Sources/Cduckdb/include/**" }

  spec.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-DDUCKDB_BUILD_LIBRARY -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_EXTENSION_ICU_LINKED -DDUCKDB_EXTENSION_JSON_LINKED'
    'OTHER_LDFLAGS' => '-l"stdc++"'
  }

  spec.cocoapods_version = '>= 1.10.0'

  spec.ios.deployment_target = '12.0'
  spec.osx.deployment_target = '10.14'


end