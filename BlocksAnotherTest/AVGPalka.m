//
//  AVGPalka.m
//  BlocksAnotherTest
//
//  Created by iOS-School-1 on 13.05.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AVGPalka.h"

@interface AVGPalka ()

@property (strong, nonatomic) NSLock *lock;

@end

@implementation AVGPalka

- (instancetype)init {
    self = [super init];
    if(self) {
        _lock = [NSLock new];
        _isFree = YES;
    }
    return  self;
}

- (instancetype)initWithPriority:(NSInteger)priority {
    self = [super init];
    if(self) {
        
    }
    return  self;
}

- (void)getPalka {
    [self.lock lock];
}
- (void)putPalka {
    [self.lock unlock];
}

@end
