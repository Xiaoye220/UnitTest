//
//  UnitTestTests.m
//  UnitTestTests
//
//  Created by Xiaoye220 on 03/06/2019.
//  Copyright (c) 2019 Xiaoye220. All rights reserved.
//

@import XCTest;

#import <UnitTest/Caculator.h>

@interface Tests : XCTestCase

@property(nonatomic, strong) Caculator *caculator;

@end

@implementation Tests

- (void)setUp {
    [super setUp];

     self.caculator = [Caculator new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAdd {
    int add = [self.caculator add:1 andB:2];
    XCTAssertEqual(add, 3);
}

- (void)testDivide {
    int divide = [self.caculator divide:3 withB:2];
    XCTAssertEqual(divide, 1.5);
}

@end

