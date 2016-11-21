//
//  Queue.h
//  Queue
//
//  Created by Randy McLain on 11/20/16.
//  Copyright © 2016 Randy McLain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject

@property (readonly, nonatomic) NSUInteger * mySize;
@property (readonly, nonatomic) id front;
@property (readonly, nonatomic) id back;

-(BOOL) isEmpty;
-(void) enqueue:(id)object;
-(id) dequeue;

@end
