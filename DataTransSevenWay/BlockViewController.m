//
//  BlockViewController.m
//  Test
//
//  Created by MC on 15/11/20.
//  Copyright © 2015年 MC. All rights reserved.
//

#import "BlockViewController.h"

@interface BlockViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation BlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor whiteColor];
//    self.textField = [[UITextField alloc]initWithFrame: (CGRectMake(50, 100, 220, 30))];
//    self.textField.borderStyle = UITextBorderStyleRoundedRect;
//    
//    self.textField.text = self.name;
//    self.textField.clearButtonMode = UITextFieldViewModeAlways;
//    [self.view addSubview: self.textField];
//    
//    UIButton *button = [[UIButton alloc]initWithFrame:(CGRectMake(100, 180, 120, 30))];
//    button.backgroundColor = [UIColor lightGrayColor];
//    [button setTitle: @"变色" forState:(UIControlStateNormal)];
//    button.layer.cornerRadius = 5;
//    [button addTarget: self action: @selector(buttonClicked:) forControlEvents:(UIControlEventTouchUpInside)];
//    [self.view addSubview: button];
    
    
}

- (IBAction)blockBtnClicked:(id)sender
//- (void)buttonClicked: (id) sender
{
    //block传值：将值传给block
    NSArray *array = [NSArray arrayWithObjects: [UIColor yellowColor], [UIColor cyanColor], [UIColor greenColor], [UIColor brownColor], nil];
    self.block([array objectAtIndex: rand() % 4]);
    //block传值：将值传给block
    self.blockofValue(self.textField);
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
