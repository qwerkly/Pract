//
//  Lesson_8Tests.m
//  Lesson 8Tests
//
//  Created by Ivan on 23.04.15.
//
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface Lesson_8Tests : XCTestCase

@end

@implementation Lesson_8Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
