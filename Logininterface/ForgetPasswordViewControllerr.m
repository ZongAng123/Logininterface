//
//  ForgetPasswordViewControllerr.m
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "ForgetPasswordViewControllerr.h"
#import "VerificationViewController.h"
#import "ForgetPasswordTwoViewController.h"

@interface ForgetPasswordViewControllerr ()
@property(nonatomic,strong)UITextField *phoneNmuber;
@property(nonatomic,strong)UITextField *auto_code;
@property(nonatomic,strong)UIButton *button;
@end

@implementation ForgetPasswordViewControllerr

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    //各种创建
    [self createOneTextField];
    [self createTwoTextField];
    [self createThreeField];
    [self createOneButton];
}
//请输入手机号码
-(void)createOneTextField
{
    Color *color = [[Color alloc]init];
    self.phoneNmuber = [[UITextField alloc]initWithFrame:CGRectMake(52.5, 109, 272, 40)];
    [self.phoneNmuber setBorderStyle:UITextBorderStyleRoundedRect];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(52.5, 109, 74.5, 40)];
    [label setTextAlignment:NSTextAlignmentCenter];
    
    [label setText:@"手机号"];
    [label setTextColor:[color getColor:@"323232"]];
    self.phoneNmuber.placeholder = @"请输入手机号码";
    
    
    self.phoneNmuber.leftView = label;
    self.phoneNmuber.leftViewMode = UITextFieldViewModeAlways;
    [self.phoneNmuber numberOnly:YES];
    [self.phoneNmuber setMaxLength:11];
    self.phoneNmuber.clearButtonMode = UITextFieldViewModeWhileEditing;
    //[button setBackgroundColor:[color getColor:@"8b8b8b"]];
    //[self.view addSubview:];
    [self.phoneNmuber setLeftViewMode:UITextFieldViewModeAlways];
    [self.view addSubview:self.phoneNmuber];
    [self.view addSubview:label];
    
}
//验证码
-(void)createTwoTextField
{
    Color *color = [[Color alloc]init];
    self.auto_code  = [[UITextField alloc]initWithFrame:CGRectMake(52.5, 162.5, 272, 40)];
    self.auto_code.borderStyle = UITextBorderStyleRoundedRect;
    self.auto_code.secureTextEntry = YES;
    self.auto_code.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(52.5, 162.5, 74.5, 40)];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setText:@"验证码"];
    [label setTextColor:[color getColor:@"323232"]];
    [label setFont:[UIFont systemFontOfSize:17]];
    self.auto_code.placeholder = @"请输入验证码";
    self.auto_code.leftView = label;
    self.auto_code.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:self.auto_code];
    [self.view addSubview:label];
}
//获取验证码
-(void)createThreeField
{
    Color *color = [[Color alloc]init];
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(128.5, 223, 121, 13)];
    text.enabled = false;
    [text setText:@"重新获取验证码"];
    [text setTextColor:[color getColor:@"323232"]];
    text.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:text];
    
}
//确定按钮以及跳转
-(void)createOneButton
{
    Color *color = [[Color alloc]init];
    self.button = [[UIButton alloc]initWithFrame:CGRectMake(52, 274.5, 271, 39)];
    [self.button setBackgroundColor:[color getColor:@"3285ff"]];
    [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.button setTitle:@"确定" forState:UIControlStateNormal];
    self.button.titleLabel.font = [UIFont systemFontOfSize:18];
    [self.button addTarget:self action:@selector(cleckButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}
//触发事件
-(void)cleckButton:(UIButton *)button
{
    if (self.phoneNmuber.text.length<1) {
        showCustomAlterView(self.phoneNmuber.placeholder);
        return;
    }
    if(self.auto_code.text.length<1)
    {
        showCustomAlterView(self.auto_code.placeholder);
        return;
    }
    ForgetPasswordTwoViewController *forgetPassword = [[ForgetPasswordTwoViewController alloc]init];
    [self.navigationController pushViewController:forgetPassword animated:YES];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]init];
    backItem.title = @"忘记密码";
    //self.navigationItem.leftBarButtonItem.image = [UIImage imageNamed:@"返回键"];
    
    self.navigationItem.backBarButtonItem = backItem;
    self.navigationItem.backBarButtonItem.style = UIBarButtonItemStylePlain;
    
}
//键盘回收
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
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
