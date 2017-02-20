//
//  DelegateViewController.h
//  DataTrans
//
//  Created by MC on 15/11/23.
//  Copyright © 2015年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"
@class UserEntity;

@interface DelegateViewController : UIViewController

@property (assign, nonatomic) NSObject<PassValueDelegate>* delegate;

@end
