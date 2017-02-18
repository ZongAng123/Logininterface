//
//  ForgetPasswordTwoViewController.m
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "ForgetPasswordTwoViewController.h"
#import "ViewController.h"
@interface ForgetPasswordTwoViewController ()
@property(nonatomic,strong)UITextField *numberNew;
@property(nonatomic,strong)UITextField *numberAgain;
@property(nonatomic,strong)UIButton *button;
@end

@implementation ForgetPasswordTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.hidden = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    //各种创建
    [self createOneTextField];
    [self createTwoTextField];
    [self createOneButton];
}
//请输入新的密码
-(void)createOneTextField
{
    Color *color = [[Color alloc]init];
    self.numberNew = [[UITextField alloc]initWithFrame:CGRectMake(52, 98, 272, 23)];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 22, 23)];
    UIImageView *imageV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"account"]];
    imageV.frame = CGRectMake(52, 98, 15, 19);
    self.numberNew.leftViewMode = UITextFieldViewModeAlways;
    self.numberNew.leftView = view;
    self.numberNew.secureTextEntry = YES;
    self.numberNew.placeholder = @"请输入新的密码";
    self.numberNew.clearButtonMode = UITextFieldViewModeWhileEditing;
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(52, 122, 272, 0.5)];
    button.backgroundColor = [color getColor:@"B9B9B9"];
    
    [self.view addSubview:imageV];
    [self.view addSubview:self.numberNew];
    [self.view addSubview:button];
}
//请再次输入密码
-(void)createTwoTextField
{
    Color *color = [[Color alloc]init];
    self.numberAgain = [[UITextField alloc]initWithFrame:CGRectMake(52, 148, 272, 23)];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 22, 23)];
    UIImageView *imageV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"lock-0"]];
    imageV.frame = CGRectMake(52, 148, 15, 19);
    self.numberAgain.leftViewMode = UITextFieldViewModeAlways;
    self.numberAgain.leftView = view;
    self.numberAgain.placeholder = @"请再次输入密码";
    self.numberAgain.secureTextEntry = YES;
    self.numberAgain.clearButtonMode = UITextFieldViewModeWhileEditing;
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(52, 169.5, 272, 0.5)];
    button.backgroundColor = [color getColor:@"B9B9B9"];
    
    [self.view addSubview:self.numberAgain];
    [self.view addSubview:imageV];
    [self.view addSubview:button];
}
//确定返回登录按钮
-(void)createOneButton
{
    Color *color = [[Color alloc]init];
    self.button = [[UIButton alloc]initWithFrame:CGRectMake(52, 249, 271, 39)];
    self.button.backgroundColor = [color getColor:@"3285ff"];
    [self.button setTitle:@"确认返回登录" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.button.titleLabel.font = [UIFont systemFontOfSize:18];
    [self.button addTarget:self action:@selector(cleckButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
}
//触发事件以及判断跟跳转
-(void)cleckButton:(UIButton *)button
{
    if(self.numberNew.text.length<1)
    {
        showCustomAlterView(self.numberNew.placeholder);
        return ;
    }
    if(self.numberAgain.text.length<1)
    {
        showCustomAlterView(self.numberAgain.placeholder);
        return;
    }
    if(self.numberAgain.text!=self.numberNew.text)
    {
        showCustomAlterView(@"两次密码不一致");
        return;
    }
    ViewController *VC = [[ViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];
    
}

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
