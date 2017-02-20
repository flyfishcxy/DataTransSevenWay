//
//  PassValueDelegate.h
//  Test
//
//  Created by MC on 15/11/16.
//  Copyright © 2015年 MC. All rights reserved.
//

#ifndef PassValueDelegate_h
#define PassValueDelegate_h


#import <Foundation/Foundation.h>
@class UserEntity;

@protocol PassValueDelegate <NSObject>

- (void) passValue:(UserEntity *)value;

@end

#endif /* PassValueDelegate_h */
