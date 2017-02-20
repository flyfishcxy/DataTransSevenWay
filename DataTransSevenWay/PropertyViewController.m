//
//  PropertyViewController.m
//  DataTransSevenWay
//
//  Created by chen on 16/3/7.
//  Copyright © 2016年 chen. All rights reserved.
//

#import "PropertyViewController.h"

@interface PropertyViewController ()

@property (weak, nonatomic) IBOutlet UILabel *propertyLabel;


@end

@implementation PropertyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"属性传值";
    NSLog(@"viewDidLoad = %@",self.propertyValue);
    
    self.propertyLabel.text = self.propertyValue;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
