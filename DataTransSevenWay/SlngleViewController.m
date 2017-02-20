//
//  SlngleViewController.m
//  Test
//
//  Created by MC on 15/11/20.
//  Copyright © 2015年 MC. All rights reserved.
//

#import "SlngleViewController.h"

@interface SlngleViewController ()

@end

@implementation SlngleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
//    NSString *passWord = [ user objectForKey:@"userPassWord"];
//    self.singleLabel.text =passWord;
    
    
    self.singleLabel.text = [Singleton shareData].value;
    
}

@end
