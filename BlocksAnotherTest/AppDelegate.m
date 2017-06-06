//
//  AppDelegate.m
//  BlocksAnotherTest
//
//  Created by iOS-School-1 on 11.05.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AppDelegate.h"
#import "AVGPhilosoph.h"
#import "AVGPalka.h"

@interface AppDelegate ()

@property (nonatomic, strong) NSMutableArray *philosophs;
@property (nonatomic, strong) NSMutableArray *palki;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.philosophs = [NSMutableArray new];
    self.palki = [NSMutableArray new];
    
    AVGPalka *palka1 = [AVGPalka new];
    AVGPalka *palka2 = [AVGPalka new];
    AVGPalka *palka3 = [AVGPalka new];
    AVGPalka *palka4 = [AVGPalka new];
    AVGPalka *palka5 = [AVGPalka new];
    [self.palki addObject:palka1];
    [self.palki addObject:palka2];
    [self.palki addObject:palka3];
    [self.palki addObject:palka4];
    [self.palki addObject:palka5];
    
    
    AVGPhilosoph *phil1 = [AVGPhilosoph new];
    phil1.name = @"1";
    phil1.leftPalka = palka1;
    phil1.rightPalka = palka2;
    //[phil1 start];
    [self.philosophs addObject:phil1];
    
    AVGPhilosoph *phil2 = [AVGPhilosoph new];
    phil2.name = @"2";
    phil2.leftPalka = palka2;
    phil2.rightPalka = palka3;
    //[phil2 start];
    [self.philosophs addObject:phil2];
    
    AVGPhilosoph *phil3 = [AVGPhilosoph new];
    phil3.name = @"3";
    phil3.leftPalka = palka3;
    phil3.rightPalka = palka4;
    //[phil3 start];
    [self.philosophs addObject:phil3];
    
    AVGPhilosoph *phil4 = [AVGPhilosoph new];
    phil4.name = @"4";
    phil4.leftPalka = palka4;
    phil4.rightPalka = palka5;
    //[phil4 start];
    [self.philosophs addObject:phil4];
    
    AVGPhilosoph *phil5 = [AVGPhilosoph new];
    phil5.name = @"5";
    phil5.leftPalka = palka5;
    phil5.rightPalka = palka1;
    //[phil5 start];
    [self.philosophs addObject:phil5];
    
    /*
    [phil1 start];
    [phil2 start];
    [phil3 start];
    [phil4 start]; //
    [phil5 start];
     */
    
    return YES;
}

@end
