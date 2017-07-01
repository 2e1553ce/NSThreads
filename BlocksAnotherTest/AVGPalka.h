//
//  AVGPalka.h
//  BlocksAnotherTest
//
//  Created by iOS-School-1 on 13.05.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVGPalka : NSObject

@property (nonatomic, assign) NSInteger priority;
@property (nonatomic, assign) BOOL isFree;

- (void)getPalka;
- (void)putPalka;

- (instancetype)initWithPriority:(NSInteger)priority;

@end
