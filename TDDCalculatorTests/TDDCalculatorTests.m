//
//  TDDCalculatorTests.m
//  TDDCalculatorTests
//
//  Created by Frederic Sevillano on 9/29/16.
//  Copyright © 2016 Frederic Sevillano. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface TDDCalculatorTests : XCTestCase

@end

@implementation TDDCalculatorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCreation {
    Calculator *calcObj = [Calculator new];
    XCTAssertNotNil(calcObj, @"Case1 failed. Unexpectedly found nil after creation.");
}

- (void)testEmptyInput {
    Calculator *calcObj = [Calculator new];
    
    int result = [calcObj multiply:nil];
    XCTAssertEqual(result, 0, @"Case 1 failed. Expected return value is 0, actual returned value is %d", result);
    
    int result2 = [calcObj multiply:@[]];
    XCTAssertEqual(result2, 0, @"Case 2 failed. Expected return value is 0, actual returned value is %d", result2);
}

- (void)testSingleInput {
    Calculator *calcObj = [Calculator new];
    NSArray *inputArray = @[@2];
    int result = [calcObj multiply:inputArray];
    XCTAssertEqual(result, 2, @"Case 1 failed. Expected return value is 2 from input [2], actual returned value is %d", result);
}

- (void)testDoubleInput {
    Calculator *calcObj = [Calculator new];
    NSArray *inputArray = @[@2, @4];
    int result = [calcObj multiply:inputArray];
    XCTAssertEqual(result, 8, @"Case 1 failed. Expected return value is 8 from input [2, 4], actual returned value is %d", result);
    NSArray *inputArray2 = @[@3, @7];
    int result2 = [calcObj multiply:inputArray2];
    XCTAssertEqual(result2, 21, @"Case 2 failed. Expected return value is 21 from input [3, 7], actual returned value is %d", result2);
}

- (void)testMultiInput {
    Calculator *calcObj = [Calculator new];
    NSArray *inputArray = @[@2, @4, @3];
    int result = [calcObj multiply:inputArray];
    XCTAssertEqual(result, 24, @"Case 1 failed. Expected return value is 24 from input [2, 4, 3], actual returned value is %d", result);
    NSArray *inputArray2 = @[@3, @7, @2, @4];
    int result2 = [calcObj multiply:inputArray2];
    XCTAssertEqual(result2, 168, @"Case 2 failed. Expected return value is 168 from input [3, 7, 2, 4], actual returned value is %d", result2);
}

@end
