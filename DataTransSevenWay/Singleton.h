//
//  Singleton.h
//  Test
//
//  Created by MC on 15/11/20.
//  Copyright © 2015年 MC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (strong, nonatomic)NSString * value;

+ (Singleton *) shareData;

@end

