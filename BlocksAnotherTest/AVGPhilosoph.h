//
//  AVGPhilosoph.h
//  BlocksAnotherTest
//
//  Created by iOS-School-1 on 13.05.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AVGPalka;
@class AVGPhilosoph;

@interface AVGPhilosoph : NSThread

@property (nonatomic, weak) AVGPalka *leftPalka;
@property (nonatomic, weak) AVGPalka *rightPalka;
@property (nonatomic, assign) BOOL isFull;
@property (nonatomic, strong) NSCondition *condition;
@property (nonatomic, copy) NSString *philName;

- (void)eating;

@end
