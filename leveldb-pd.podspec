Pod::Spec.new do |s|
  s.name         = "leveldb-pd"
  s.version      = "0.1.0"
  s.summary      = "LevelDB is a fast key-value storage library written at Google that provides an ordered mapping from string keys to string values."
  s.description  = <<-DESC
    LevelDB is a fast key-value storage library written at Google that provides an ordered mapping from string keys to string values.
                   DESC
  s.homepage     = "https://github.com/google/leveldb"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "zengjing" => "hhtczengjing@gmail.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/hhtczengjing/leveldb-pd.git", :tag => "#{s.version}" }
  s.source_files  = "include/leveldb/*.{h}", "*.{h,m,mm}"
  s.public_header_files = "*.h", "include/leveldb/*.h"
  s.library   = "c++"
  s.requires_arc = true
  s.vendored_libraries = 'libleveldb.a', 'libmemenv.a'
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/leveldb-pd/include/leveldb" }
end
