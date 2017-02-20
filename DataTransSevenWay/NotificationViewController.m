//
//  NotificationViewController.m
//  DataTrans
//
//  Created by MC on 15/11/23.
//  Copyright © 2015年 MC. All rights reserved.
//

#import "NotificationViewController.h"

@interface NotificationViewController ()

@property (retain, nonatomic)IBOutlet UILabel *notifyLabel;

@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.notifyLabel.text = self.passStr;

    

}

@end
