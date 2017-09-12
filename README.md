# MarisaTrieObjc
marisa-trie for Objective-c, published as a pod of CocoaPods

### lint 
`pod lib lint --use-libraries`
### publish 
`pod trunk push MarisaTrie.podspec --use-libraries`

### usage(you should use it in Objective-c++, *.mm file):
1. Podfile
```rb
platform :osx, '10.12'

target 'test-trie' do
    pod 'MarisaTrie', "0.0.1"
end
```

2. `pod update && pod install`

2. demo code:
```objc
#import "marisa_trie_objc.h"

MarisaTrie* marisaTrie = [[MarisaTrie alloc] init];
[marisaTrie insertString: @"goods"];
[marisaTrie insertString: @"goodshoot"];
[marisaTrie insertString: @"goodson"];
[marisaTrie insertString: @"goodsell"];
[marisaTrie buildTrie];

NSArray* result = [marisaTrie queryTrie:@"good"];
NSLog(@"===queryed list is %@", result);
```