//  Created by Dong Yuwei  on 09/09/2017.
//  Copyright © 2017 Dong Yuwei . All rights reserved.


#import <Foundation/Foundation.h>
#import "marisa.h"


@interface MarisaTrie : NSObject {
    marisa::Keyset _keyset;
    marisa::Trie _trie;
}

//-(marisa_trie_objc*)loadTrie: (NSString*)prebuiltTriePath;
-(void)insertString: (NSString*)word;
-(void)buildTrie;
-(NSArray*)queryTrie:(NSString*)prefix;


@end
