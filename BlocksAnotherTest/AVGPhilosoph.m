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
    
    #warning LOCKS
    /*
    [self.leftPalka getPalka];
    [self.rightPalka getPalka];
    NSLog(@"%@ is eating", self.name);
    sleep(1);
    [self.leftPalka putPalka];
    [self.rightPalka putPalka];
    NSLog(@"%@ Finished!", self.name);
     */
    
    #warning PRIORITIES
    if(self.leftPalka.priority < self.rightPalka.priority) {
        while(!self.leftPalka.isFree) continue;
        self.leftPalka.isFree = NO;
        while(!self.rightPalka.isFree) continue;
        self.rightPalka.isFree = NO;
    }
    else {
        while(!self.rightPalka.isFree) continue;
        self.rightPalka.isFree = NO;
        while(!self.leftPalka.isFree) continue;
        self.leftPalka.isFree = NO;
    }
    NSLog(@"%@ is eating", self.name);
    self.leftPalka.isFree = YES;
    self.rightPalka.isFree = YES;
    NSLog(@"%@ Finished!", self.name);
}

@end
