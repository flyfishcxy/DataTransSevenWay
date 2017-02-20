//
//  ViewController.m
//  DataTransSevenWay
//
//  Created by chen on 16/3/7.
//  Copyright © 2016年 chen. All rights reserved.
//

#import "ViewController.h"

#import "PropertyViewController.h"
#import "MethodViewController.h"
#import "PassValueDelegate.h"
#import "UserEntity.h"
#import "DelegateViewController.h"
#import "BlockViewController.h"

#import "Singleton.h"
#import "SlngleViewController.h"

#import "NotificationViewController.h"


@interface ViewController ()<PassValueDelegate>
@property (weak, nonatomic) IBOutlet UILabel *delegatePassValue;
@property (weak, nonatomic) IBOutlet UILabel *delegatePassTwoValue;
@property (weak, nonatomic) IBOutlet UITextField *singleTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(catchNotifi:) name:@"myNotification" object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"myNotification" object:nil];
}

- (IBAction)propertyBtnClicked:(id)sender {
    
    PropertyViewController *viewCtrl = [self.storyboard instantiateViewControllerWithIdentifier:@"proper_sid"];
    viewCtrl.propertyValue = @"hello";

    [self.navigationController pushViewController:viewCtrl animated:YES];
    
    
}


- (IBAction)methodBtnClicked:(id)sender {
    
    MethodViewController *viewCtrl = [self.storyboard instantiateViewControllerWithIdentifier:@"method_sid"];
    [viewCtrl initWithValue:@"world"];

    [self.navigationController pushViewController:viewCtrl animated:YES];
    
}

- (IBAction)delegateBtnClicked:(id)sender {
    DelegateViewController *viewCtrl = [self.storyboard instantiateViewControllerWithIdentifier:@"delegate_sid"];
    viewCtrl.delegate = self;
    [self.navigationController pushViewController:viewCtrl animated:YES];
    
}

- (void) passValue:(UserEntity *)value
{
    self.delegatePassValue.text = value.usr;
    self.delegatePassTwoValue.text = value.psd;
}


- (IBAction)blockBtnClicked:(id)sender {
    
    
    // 声明一个block，需要传入一个颜色，让当前的view变色
    void(^changeColor)(UIColor *color) = ^void(UIColor *color) {
        self.block.backgroundColor = color;
    };
    // 声明一个block，需要传入一个textfield，改变当前按钮文字
    void(^changeValue)(UITextField *textField) = ^void(UITextField *textField) {
        [self.block setTitle: textField.text forState:(UIControlStateNormal)];
    };
    
    BlockViewController *viewCtrl = [self.storyboard instantiateViewControllerWithIdentifier:@"block_sid"];

    // block传值：将block给第二个页面
    viewCtrl.block = changeColor;
    viewCtrl.blockofValue = changeValue;
    viewCtrl.name = self.block.currentTitle;
    [self.navigationController pushViewController:viewCtrl animated:YES];
}


- (IBAction)singleBtnClicked:(id)sender {
    
    Singleton *oneS = [Singleton shareData];
    oneS.value = self.singleTextField.text;
    
    NSString *value =self.singleTextField.text;
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setObject:value forKey:@"defaultValue"];
    [user synchronize];
    

    SlngleViewController *viewCtrl = [self.storyboard instantiateViewControllerWithIdentifier:@"single_sid"];

    [self.navigationController pushViewController: viewCtrl animated:YES];
    
}

- (IBAction)postNotifiBtnClicked:(id)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"myNotification" object:@"notification"];
}


-(void) catchNotifi:(NSNotification*) notification
{
    
    NSString *object = notification.object;
    
    
    NotificationViewController *VC = [self.storyboard instantiateViewControllerWithIdentifier:@"notify_sid"];
    VC.passStr = object;
    [self.navigationController pushViewController:VC animated: YES];

    
    
}

#pragma mark - TextField Delegate

-(void)touchesBegan:(UITapGestureRecognizer *)tap
{
    [self.view endEditing:YES];
    return;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.singleTextField resignFirstResponder];
    return YES;
}


@end
