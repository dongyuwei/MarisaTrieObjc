//
//  MarisaTrieTests.m
//  MarisaTrieTests
//
//  Created by Dong Yuwei  on 10/09/2017.
//  Copyright © 2017 Dong Yuwei . All rights reserved.
//

#import <XCTest/XCTest.h>
#import "marisa_trie_objc.h"

@interface MarisaTrieTests : XCTestCase

@end

@implementation MarisaTrieTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBuildAndQuryTrie {
    MarisaTrie* marisaTrie = [[MarisaTrie alloc] init];
    [marisaTrie insertString: @"goods"];
    [marisaTrie insertString: @"goodshoot"];
    [marisaTrie insertString: @"goodson"];
    [marisaTrie insertString: @"goodsell"];
    [marisaTrie buildTrie];
    
    NSArray* result = [marisaTrie queryTrie:@"good"];
    NSLog(@"===queryed list is %@", result);
    XCTAssertEqual([result count], 4);
    XCTAssertEqualObjects(result[0], @"goods", @"===");
    XCTAssertEqualObjects(result[3], @"goodson", @"===");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
