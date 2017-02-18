//
//  ViewController.m
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "ViewController.h"
#import "RegisterViewController.h"
#import "ForgetPasswordViewControllerr.h"
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden= YES;
    //各种创建
    [self createImageView];
    [self createOneTextField];
    [self createTwoTextField];
    [self createOneButton];
    [self createTwoButton];
    [self createThreeButton];
    
}
//头像创建
-(void)createImageView
{
    UIImageView *imageVcOne = [[[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-46.25 ,79, 92.5, 92.5)]initWithImage:[UIImage imageNamed:@"头像"]];
    imageVcOne.layer.cornerRadius = 45.5;
    [self.view addSubview:imageVcOne];
}
//请输入手机号的textfield
-(void)createOneTextField
{
    UITextField *oneTextField = [[UITextField alloc]initWithFrame:CGRectMake(52, 202, 271, 39)];
    [oneTextField setBorderStyle:UITextBorderStyleNone];
    oneTextField.placeholder = @"请输入手机号";
    oneTextField.textAlignment = NSTextAlignmentLeft;
    oneTextField.font = [UIFont systemFontOfSize:18];
    oneTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    oneTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    [oneTextField numberOnly:YES];
    [oneTextField setMaxLength:11];
    
    UIButton *oneButton = [[UIButton alloc]initWithFrame:CGRectMake(52, 202, 272, 1)];
    oneButton.backgroundColor = [UIColor colorWithRed:0.3633 green:0.3633 blue:0.3633 alpha:0.59932650862069];
    UIButton *twoButton = [[UIButton alloc]initWithFrame:CGRectMake(52, 202, 1, 40)];
    twoButton.backgroundColor = [UIColor colorWithRed:0.3633 green:0.3633 blue:0.3633 alpha:0.59932650862069];
    UIButton *threeButton = [[UIButton alloc]initWithFrame:CGRectMake(52, 242, 272, 1)];
    threeButton.backgroundColor = [UIColor colorWithRed:0.3633 green:0.3633 blue:0.3633 alpha:0.59932650862069];
    UIButton *fourButton = [[UIButton alloc]initWithFrame:CGRectMake(324, 202, 1, 40)];
    fourButton.backgroundColor = [UIColor colorWithRed:0.3633 green:0.3633 blue:0.3633 alpha:0.59932650862069];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(63,225, 35, 17)];
    UIImageView *imageVcTwo = [[[UIImageView alloc]initWithFrame:CGRectMake(63, 213, 16, 16)]initWithImage:[UIImage imageNamed:@"登陆的图标"]];
    oneTextField.leftView = view;
    [self.view addSubview:oneButton];
    [self.view addSubview:twoButton];
    [self.view addSubview:threeButton];
    [self.view addSubview:fourButton];
    [oneTextField setLeftViewMode:UITextFieldViewModeAlways];
    [self.view addSubview:oneTextField];
    [self.view addSubview:imageVcTwo];
    
}
//创建请输入密码textfield
-(void)createTwoTextField
{
    UITextField *twoTextField = [[UITextField alloc]initWithFrame:CGRectMake(52, 254, 271, 39)];
    [twoTextField setBorderStyle:UITextBorderStyleNone];
    twoTextField.placeholder = @"请输入密码";
    twoTextField.textAlignment = NSTextAlignmentLeft;
    twoTextField.font = [UIFont systemFontOfSize:18];
    twoTextField.clearButtonMode = UITextFieldViewModeAlways;
    twoTextField.secureTextEntry = YES;
    
    UIButton *oneButton = [[UIButton alloc]initWithFrame:CGRectMake(52, 254, 272, 1)];
    oneButton.backgroundColor = [UIColor colorWithRed:0.3633 green:0.3633 blue:0.3633 alpha:0.59932650862069];
    UIButton *twoButton = [[UIButton alloc]initWithFrame:CGRectMake(52, 254, 1, 40)];
    twoButton.backgroundColor = [UIColor colorWithRed:0.3633 green:0.3633 blue:0.3633 alpha:0.59932650862069];
    UIButton *threeButton = [[UIButton alloc]initWithFrame:CGRectMake(52, 294, 272, 1)];
    threeButton.backgroundColor = [UIColor colorWithRed:0.3633 green:0.3633 blue:0.3633 alpha:0.59932650862069];
    UIButton *fourButton = [[UIButton alloc]initWithFrame:CGRectMake(324, 254, 1, 40)];
    fourButton.backgroundColor = [UIColor colorWithRed:0.3633 green:0.3633 blue:0.3633 alpha:0.59932650862069];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(63, 225, 35, 17)];
    UIImageView *imageVcThree = [[[UIImageView alloc]initWithFrame:CGRectMake(11, 12, 16, 16.5)]initWithImage:[UIImage imageNamed:@"密码锁"]];
    [self.view addSubview:oneButton];
    [self.view addSubview:twoButton];
    [self.view addSubview:threeButton];
    [self.view addSubview:fourButton];
    twoTextField.leftView = view;
    [twoTextField setLeftViewMode:UITextFieldViewModeAlways];
    [twoTextField addSubview:imageVcThree];
    [self.view addSubview:twoTextField];
    
}
//创建登录按钮
-(void)createOneButton
{
    Color *color = [[Color alloc]init];
    UIButton *oneButton = [[UIButton alloc]initWithFrame:CGRectMake(52, 314, 271, 39)];
    [oneButton setBackgroundColor:[color getColor:@"3285ff"]];
    [oneButton setTitle:@"登录" forState:UIControlStateNormal];
    oneButton.titleLabel.font = [UIFont systemFontOfSize:18];
    oneButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [oneButton addTarget:self action:@selector(cleckButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:oneButton];
}
//点击按钮
-(void)cleckButton:(UIButton *)button
{
    
}
//新用户注册按钮
-(void)createTwoButton
{
    UIButton *twoButton = [[UIButton alloc]initWithFrame:CGRectMake(52, 402.5,64,12)];
    [twoButton setTitle:@"新用户注册" forState:UIControlStateNormal];
    [twoButton setTitleColor:[UIColor colorWithRed:0.3176 green:0.3176 blue:0.3176 alpha:1.0] forState:UIControlStateNormal];
    twoButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [twoButton addTarget:self action:@selector(cleckTwoButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:twoButton];
}
//忘记密码按钮
-(void)createThreeButton
{
    UIButton *threeButton = [[UIButton alloc]initWithFrame:CGRectMake(259, 402.5, 65, 13)];
    [threeButton setTitle:@"忘记密码" forState:UIControlStateNormal];
    [threeButton setTitleColor:[UIColor colorWithRed:0.3176 green:0.3176 blue:0.3176 alpha:1.0] forState:UIControlStateNormal];
    threeButton.titleLabel.font = [UIFont systemFontOfSize:12];
    UIImageView *imageVcFour = [[[UIImageView alloc]initWithFrame:CGRectMake(62, 0, 11, 11)]initWithImage:[UIImage imageNamed:@"问号"]];
    [threeButton addSubview:imageVcFour];
    [threeButton addTarget:self action:@selector(cleckThreeButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:threeButton];
}
//新用户注册调转
-(void)cleckTwoButton
{
    RegisterViewController *registerVC = [[RegisterViewController alloc]init];
    [self.navigationController pushViewController:registerVC animated:YES];
    UIBarButtonItem *backIetm = [[UIBarButtonItem alloc]init];
    backIetm.title = @"新用户注册";
    self.navigationItem.backBarButtonItem = backIetm;
    self.navigationItem.backBarButtonItem.style = UIBarButtonItemStylePlain;
    
}
//忘记密码跳转
-(void)cleckThreeButton:(UIButton *)button
{
    ForgetPasswordViewControllerr *forgetPassWordVC = [[ForgetPasswordViewControllerr alloc]init];
    [self.navigationController pushViewController:forgetPassWordVC  animated:YES];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]init];
    backItem.title = @"忘记密码";
    self.navigationItem.backBarButtonItem = backItem;
    self.navigationItem.backBarButtonItem.style = UIBarButtonItemStylePlain;
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
    
}

-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBarHidden = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
