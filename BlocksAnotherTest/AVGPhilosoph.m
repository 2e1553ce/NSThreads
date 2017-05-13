//
//  AVGPhilosoph.m
//  BlocksAnotherTest
//
//  Created by iOS-School-1 on 13.05.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AVGPhilosoph.h"
#import "AVGPalka.h"

@interface AVGPhilosoph ()

@end

@implementation AVGPhilosoph

- (instancetype)init {
    self = [super init];
    if (self) {
        self.isFull = NO;
    }
    return self;
}

- (void)main{
    [self.leftPalka getPalka];
    [self.rightPalka getPalka];
    NSLog(@"%@ is eating", self.name);
    sleep(1);
    self.isFull = YES;
    [self.leftPalka putPalka];
    [self.rightPalka putPalka];
}


@end
