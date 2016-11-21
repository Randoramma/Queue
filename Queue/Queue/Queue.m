//
//  Queue.m
//  Queue
//
//  Created by Randy McLain on 11/20/16.
//  Copyright © 2016 Randy McLain. All rights reserved.
//

#import "Queue.h"
@interface Queue ()
@property (strong, nonatomic) NSMutableArray *myQueue;
@property (readwrite) NSUInteger *mySize;

@end


@implementation Queue

-(instancetype) init {
  if (self = [super init]) {
    self.myQueue = [[NSMutableArray alloc] init];
  }
  
  return self;
}

-(BOOL) isEmpty {
  return (self.myQueue.count == 0);
}

-(void) enqueue:(id)object{
  
  [self.myQueue addObject:object];
  self.mySize ++;
}

-(id) dequeue {
  
  id firstObject = nil;
  
  if(![self isEmpty]) {
    firstObject = self.myQueue.firstObject;
    [self.myQueue removeObjectAtIndex:0];
    
  }
  return  firstObject;
  
}

-(id) front {
  return self.myQueue.firstObject;
}

-(id) back {
  return self.myQueue.lastObject; 
}


@end
