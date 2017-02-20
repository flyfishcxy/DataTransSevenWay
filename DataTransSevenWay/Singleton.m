//
//  Singleton.m
//  Test
//
//  Created by MC on 15/11/20.
//  Copyright © 2015年 MC. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *singletonData = nil;

+ (Singleton *)shareData
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singletonData = [[Singleton alloc]init];
    });
    return singletonData;
}

- (id) init
{
    if (self = [super init]) {
        
    }
    return self;
}

@end
