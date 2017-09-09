//  Created by Dong Yuwei  on 09/09/2017.
//  Copyright © 2017 Dong Yuwei . All rights reserved.


#import "marisa_trie_objc.h"

@implementation MarisaTrie

//-(MarisaTrie*)loadTrie: (NSString*)prebuiltTriePath {
//    NSString* path = [[NSBundle mainBundle] pathForResource:prebuiltTriePath ofType:@"bin"];
//    const char *cPath = [path cStringUsingEncoding:[NSString defaultCStringEncoding]];
//    _trie.load(cPath);
//    return self;
//}

-(void)insertString: (NSString*)word {
    const char *cWord = [word cStringUsingEncoding:[NSString defaultCStringEncoding]];
    _keyset.push_back(cWord);
}

-(void)buildTrie {
    _trie.build(_keyset);
}

-(NSArray*)queryTrie: (NSString*)prefix {
    marisa::Agent agent;
    const char *query = [prefix cStringUsingEncoding:[NSString defaultCStringEncoding]];
    agent.set_query(query);
    
    NSMutableArray *filtered = [[NSMutableArray alloc] init];
    while (_trie.predictive_search(agent)) {
        const marisa::Key key = agent.key();
        NSString* word = [[NSString alloc] initWithBytes: key.ptr()
                                                  length: key.length()
                                                encoding: NSASCIIStringEncoding];
        [filtered addObject: word];
    }
    return [filtered copy];
}

@end
