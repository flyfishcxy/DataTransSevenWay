//
//  BlockViewController.h
//  Test
//
//  Created by MC on 15/11/20.
//  Copyright © 2015年 MC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockViewController : UIViewController

// block传值：将block给第二个页面
// block传值：当block变量作为一个类的属性，必须要使用copy修饰
@property (nonatomic, copy)void(^block)(UIColor *color);
@property (nonatomic, copy)void(^blockofValue)(UITextField *textField);
@property (nonatomic, copy)NSString *name;

@end
