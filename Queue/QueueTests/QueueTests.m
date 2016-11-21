//
//  QueueTests.m
//  QueueTests
//
//  Created by Randy McLain on 11/20/16.
//  Copyright © 2016 Randy McLain. All rights reserved.
//

#import "Queue.h"
#import <XCTest/XCTest.h>

@interface QueueTests : XCTestCase
@property (strong, nonatomic) Queue *myQueue;
@end

@implementation QueueTests

- (void)setUp {
    [super setUp];
  _myQueue = [[Queue alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  _myQueue = nil;
    [super tearDown];
}

-(void) testQueue_ShouldNotBeNull {

  XCTAssertNotNil(_myQueue);
  
}

-(void) testQueue_IsEmpty_ShouldBeTrue {
  XCTAssertTrue([_myQueue isEmpty]);
}

-(void) testQueue_Enqueue_shouldNotBeEmpty {

  NSString * theObject = [NSString stringWithFormat:@"This is my queue string"];
  [_myQueue enqueue:theObject];
  
  XCTAssertFalse([_myQueue isEmpty]);
}

-(void) testQueue_Dequeue_shouldBeEmpty {
  
  NSString * theObject = [NSString stringWithFormat:@"This is my queue string"];
  [_myQueue enqueue:theObject];
  [_myQueue dequeue];
  XCTAssertTrue([_myQueue isEmpty]);
}

-(void) testQueue_TheOrder_ShouldBeEqual {
  
    NSString * theObject =  [NSString stringWithFormat:@"This is my 1st queue string"];
    NSString * theObject2 = [NSString stringWithFormat:@"This is my 2nd queue string"];
    NSString * theObject3 = [NSString stringWithFormat:@"This is my 3rd queue string"];
  
  [_myQueue enqueue:theObject];  // should be object 0 or front
  [_myQueue enqueue:theObject2]; // should be object middle
  [_myQueue enqueue:theObject3]; // should be back.
  
  XCTAssertTrue([_myQueue.front isEqualToString:theObject]);
  XCTAssertTrue([_myQueue.back isEqualToString:theObject3]);
  
  [_myQueue dequeue];
  XCTAssertTrue([_myQueue.front isEqualToString:theObject2]);
  
  
}



@end
