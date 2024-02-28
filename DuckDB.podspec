Pod::Spec.new do |spec|
    spec.name         = "DuckDB"
    spec.version      = "1.0.0"
    spec.summary      = "Summary of DuckDB"
    spec.description  = "Description of DuckDB."
    spec.homepage     = "https://example.com"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author       = { "Your Name" => "your@email.com" }
    spec.platform     = :ios, "9.0"
    spec.source       = { :git => "https://github.com/yourusername/DuckDB.git", :tag => "1.0.0" }
    spec.source_files = "DuckDB/**/*.{h,cpp}"
    spec.public_header_files = "DuckDB/**/*.h"
    spec.dependency "Cduckdb"
    spec.frameworks   = "Foundation"
    spec.pod_target_xcconfig = {
      'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/DuckDB/src/include $(PODS_TARGET_SRCROOT)/DuckDB/third_party/fmt/include $(PODS_TARGET_SRCROOT)/DuckDB/third_party/fsst $(PODS_TARGET_SRCROOT)/DuckDB/third_party/re2 $(PODS_TARGET_SRCROOT)/DuckDB/third_party/miniz $(PODS_TARGET_SRCROOT)/DuckDB/third_party/utf8proc/include $(PODS_TARGET_SRCROOT)/DuckDB/third_party/utf8proc $(PODS_TARGET_SRCROOT)/DuckDB/third_party/hyperloglog $(PODS_TARGET_SRCROOT)/DuckDB/third_party/skiplist $(PODS_TARGET_SRCROOT)/DuckDB/third_party/fastpforlib $(PODS_TARGET_SRCROOT)/DuckDB/third_party/tdigest $(PODS_TARGET_SRCROOT)/DuckDB/third_party/libpg_query/include $(PODS_TARGET_SRCROOT)/DuckDB/third_party/libpg_query $(PODS_TARGET_SRCROOT)/DuckDB/third_party/concurrentqueue $(PODS_TARGET_SRCROOT)/DuckDB/third_party/pcg $(PODS_TARGET_SRCROOT)/DuckDB/third_party/httplib $(PODS_TARGET_SRCROOT)/DuckDB/third_party/fast_float $(PODS_TARGET_SRCROOT)/DuckDB/third_party/mbedtls $(PODS_TARGET_SRCROOT)/DuckDB/third_party/mbedtls/include $(PODS_TARGET_SRCROOT)/DuckDB/third_party/mbedtls/library $(PODS_TARGET_SRCROOT)/DuckDB/third_party/jaro_winkler $(PODS_TARGET_SRCROOT)/DuckDB/third_party/jaro_winkler/details $(PODS_TARGET_SRCROOT)/DuckDB/extension/parquet/include $(PODS_TARGET_SRCROOT)/DuckDB/third_party/parquet $(PODS_TARGET_SRCROOT)/DuckDB/third_party/thrift $(PODS_TARGET_SRCROOT)/DuckDB/third_party/snappy $(PODS_TARGET_SRCROOT)/DuckDB/third_party/zstd/include $(PODS_TARGET_SRCROOT)/DuckDB/third_party/mbedtls $(PODS_TARGET_SRCROOT)/DuckDB/third_party/mbedtls/include $(PODS_TARGET_SRCROOT)/DuckDB/extension/icu/include $(PODS_TARGET_SRCROOT)/DuckDB/extension/icu/third_party/icu/common $(PODS_TARGET_SRCROOT)/DuckDB/extension/icu/third_party/icu/i18n $(PODS_TARGET_SRCROOT)/DuckDB/extension/json/include $(PODS_TARGET_SRCROOT)/DuckDB/extension/json/yyjson/include',
      'DEFINES' => 'DUCKDB_EXTENSION_PARQUET_LINKED DUCKDB_EXTENSION_ICU_LINKED DUCKDB_EXTENSION_JSON_LINKED DUCKDB_BUILD_LIBRARY'
    }
  end