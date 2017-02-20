//
//  MethodViewController.m
//  DataTransSevenWay
//
//  Created by chen on 16/3/7.
//  Copyright © 2016年 chen. All rights reserved.
//

#import "MethodViewController.h"

@interface MethodViewController ()
@property (weak, nonatomic) IBOutlet UILabel *methodValue;

@end

@implementation MethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.methodValue.text = self.methodvalue;
}

- (void)initWithValue:(NSString* )value
{
    self.methodvalue = value;

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
