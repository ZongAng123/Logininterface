//
//  VerificationViewController.m
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "VerificationViewController.h"

@interface VerificationViewController ()
@property (strong, nonatomic) UILabel *phoneNumber_label;
@property (strong, nonatomic) UITextField *code_textField;
@property(strong,nonatomic) UIButton *button;
@end

@implementation VerificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    //各种创建
    [self createOneLabelText];
    [self createOneTextFiled];
    [self createTwoTextFiled];
    [self createThreeTextFiled];
    [self createOneButton];
}
//创建短信验证码已发送至
-(void)createOneLabelText
{
    Color *color = [[Color alloc]init];
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(73, 110, 113, 12)];
    text.text = @"短信验证码已发送至";
    text.font = [UIFont systemFontOfSize:11];
    text.enabled = false;
    
    self.phoneNumber_label = [[UILabel alloc]initWithFrame:CGRectMake(172, 110, 109, 12)];
    self.phoneNumber_label.font = [UIFont systemFontOfSize:11];
    self.phoneNumber_label.text = [NSString stringWithFormat:@"+86 %@",self.phoneNumber];
    self.phoneNumber_label.textColor = [UIColor redColor];
    
    [self.view addSubview:text];
    [self.view addSubview:self.phoneNumber_label];
    
}
//请输入收到的验证码textfield
-(void)createOneTextFiled
{
    Color *color = [[Color alloc]init];
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(147, 137, 83, 11)];
    text.font = [UIFont systemFontOfSize:9];
    text.text = @"请输入收到的验证码";
    text.textColor = [color getColor:@"8d8d8d"];
    text.enabled = false;
    [self.view addSubview:text];
    
}
//请输入验证码
-(void)createTwoTextFiled
{
    Color *color = [[Color alloc]init];
    self.code_textField = [[UITextField alloc]initWithFrame:CGRectMake(144, 169, 91, 26)];
    self.code_textField.font = [UIFont systemFontOfSize:15];
    self.code_textField.placeholder = @"请输入验证码";
    [self.code_textField setTextAlignment:NSTextAlignmentCenter];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(143, 168, 92, 0.5)];
    button.backgroundColor = [color getColor:@"83887f"];
    UIButton *twoButton = [[UIButton alloc]initWithFrame:CGRectMake(143, 168, 0.5, 28)];
    twoButton.backgroundColor = [color getColor:@"83887f"];
    UIButton *threeButton = [[UIButton alloc]initWithFrame:CGRectMake(143, 196, 92, 0.5)];
    threeButton.backgroundColor = [color getColor:@"83887f"];
    UIButton *fourButton = [[UIButton alloc]initWithFrame:CGRectMake(235, 168, 0.5, 28)];
    fourButton.backgroundColor = [color getColor:@"83887f"];
    
    [self.code_textField setMaxLength:4];
    [self.code_textField numberOnly:YES];
    [self.view addSubview:button];
    [self.view addSubview:twoButton];
    [self.view addSubview:threeButton];
    [self.view addSubview:fourButton];
    [self.view addSubview:self.code_textField];
    
}
//重新获取验证码textfield
-(void)createThreeTextFiled
{
    Color *color = [[Color alloc]init];
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(146, 218, 88, 9.5)];
    text.font = [UIFont systemFontOfSize:9];
    text.text = @"重新获取验证码";
    text.textColor = [color getColor:@"2f2f2f"];
    text.enabled = false;
    [self.view addSubview:text];
}
//注册并登录按钮
-(void)createOneButton
{
    Color *color = [[Color alloc]init];
    self.button = [[UIButton alloc]initWithFrame:CGRectMake(52, 259, 272, 40)];
    self.button.backgroundColor = [color getColor:@"3285ff"];
    [self.button setTitle:@"注册并登录" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.button.titleLabel.font = [UIFont systemFontOfSize:18];
    [self.button addTarget: self action:@selector(cleckButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
}

-(void)cleckButton:(UIButton *)button
{
    //验证码
    if (_code_textField.text.length<1) {
        showCustomAlterView(_code_textField.placeholder);
        return;
    }
    showIndicator(YES, self.view);
}

//点击空白的地方收回键盘
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
