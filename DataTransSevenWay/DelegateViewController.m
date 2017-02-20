//
//  DelegateViewController.m
//  DataTrans
//
//  Created by MC on 15/11/23.
//  Copyright © 2015年 MC. All rights reserved.
//

#import "DelegateViewController.h"
#import "UserEntity.h"

@interface DelegateViewController ()

@property (weak, nonatomic) IBOutlet UITextField *usr;
@property (weak, nonatomic) IBOutlet UITextField *psd;


@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}



#pragma mark - TextField Delegate

-(void)touchesBegan:(UITapGestureRecognizer *)tap
{
    [self.view endEditing:YES];
    return;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.usr resignFirstResponder];
    [self.psd resignFirstResponder];
    return YES;
}



- (IBAction)btnClicked:(id)sender
{
    UserEntity *userEntity = [[UserEntity alloc]init];
    userEntity.usr = self.usr.text;
    userEntity.psd = self.psd.text;
    
    [self.delegate passValue: userEntity];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
