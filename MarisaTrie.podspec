
# lint with `pod lib lint --use-libraries`
Pod::Spec.new do |s|
  s.name         = "MarisaTrie"
  s.version      = "0.0.1"
  s.summary      = "marisa-trie for Objective-c"
  s.description  = <<-DESC
                    marisa-trie for Objective-c, published as a Pod of CocoaPods
                   DESC
  s.homepage     = "https://github.com/dongyuwei/MarisaTrieObjc"
  
  s.license      = 'BSD 2-Clause License'
  s.author       = { "Dong Yuwei" => "newdongyuwei@gmail.com" }
  s.social_media_url = "http://twitter.com/newdongyuwei"
  s.source       = { :git => "https://github.com/dongyuwei/MarisaTrieObjc.git", :tag => s.version.to_s }

  s.platform     = :osx, '10.12'
  s.requires_arc = true

  s.source_files = 'marisa-trie-objc/*.{h,mm}'
  s.preserve_paths = "include/*", "include/**/*"

  # https://stackoverflow.com/questions/28425765/add-a-user-header-search-path-to-a-podspec
  s.xcconfig = { 
    # 'USER_HEADER_SEARCH_PATHS' => "$(SRCROOT)/include",
    # 'HEADER_SEARCH_PATHS' => "$SOURCE_ROOT/include",
    'USER_HEADER_SEARCH_PATHS' => "/Users/yuwdong/code/objc/marisa-trie-objc/include",
  }
  s.vendored_libraries = "lib/libmarisa.a"
  s.library = 'c++'
  s.frameworks = 'Foundation'
end