//
//  RegisterViewController.m
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "RegisterViewController.h"
#import "VerificationViewController.h"
#import "Tool.h"
@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createOne];
    self.view.backgroundColor = [UIColor whiteColor];
}
-(void)createOne
{
    Color *color = [[Color alloc]init];
    //请输入手机号textfield
    self.textOne = [[UITextField alloc]initWithFrame:CGRectMake(50, 129, 220, 24)];
    
    [self.textOne setBorderStyle:UITextBorderStyleNone];
    self.textOne.placeholder = @"请输入手机号";
    self.textOne.font = [UIFont systemFontOfSize:12];
    self.textOne.textAlignment = NSTextAlignmentLeft;
    self.textOne.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.textOne setMaxLength:11];
    [self.textOne numberOnly:YES];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(51, 126, 21, 20)];
    UIImageView *OneVC1 = [[UIImageView alloc]initWithFrame:CGRectMake(51, 126, 13, 20)];
    OneVC1.image = [UIImage imageNamed:@"mobile"];
    UIButton *button1 = [[UIButton alloc]initWithFrame:CGRectMake(51, 152, 271, 0.5)];
    [button1 setBackgroundColor:[color getColor:@"8b8b8b"]];
    UIButton *twoButton1 = [[UIButton alloc]initWithFrame:CGRectMake(271, 128, 0.5, 16)];
    [twoButton1 setBackgroundColor:[color getColor:@"8b8b8b"]];
    UIImageView *twoVC1= [[UIImageView alloc]initWithFrame:CGRectMake(315, 129.5, 8, 12)];
    twoVC1.image = [UIImage imageNamed:@"右箭头"];
    UIButton *threeButton1 = [[UIButton alloc]initWithFrame:CGRectMake(284, 130, 24, 12)];
    [threeButton1 setTitle:@"中国" forState:UIControlStateNormal];
    threeButton1.titleLabel.font = [UIFont systemFontOfSize:12];
    [threeButton1 setTitleColor: [color getColor:@"8b8b8b"] forState:UIControlStateNormal];
    self.textOne.leftView = view1;
    [self.textOne setLeftViewMode:UITextFieldViewModeAlways];
    
    //请输入密码textfield
    self.textTwo = [[UITextField alloc]initWithFrame:CGRectMake(50, 180, 275, 24)];
    self.textTwo.placeholder = @"请输入密码";
    self.textTwo.font = [UIFont systemFontOfSize:12];
    self.textTwo.textAlignment = NSTextAlignmentLeft;
    self.textTwo.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.textTwo.secureTextEntry = YES;
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(51, 179, 21, 17)];
    UIImageView *twoImageVC2 = [[[UIImageView alloc]initWithFrame:CGRectMake(51, 179, 15, 17)]initWithImage:[UIImage imageNamed:@"account"]];
    UIButton *oneButton2 = [[UIButton alloc]initWithFrame:CGRectMake(51, 201, 271, 0.5)];
    oneButton2.backgroundColor =[UIColor colorWithRed:0.6582 green:0.6581 blue:0.6581 alpha:0.953529094827586];
    self.textTwo.leftView = view2;
    [self.textTwo setLeftViewMode:UITextFieldViewModeAlways];
    
    [self.view addSubview:self.textTwo];
    [self.view addSubview:twoImageVC2];
    [self.view addSubview:oneButton2];
    
    //请再次输入密码textfield
    self.textThree = [[UITextField alloc]initWithFrame:CGRectMake(50, 230, 275, 24)];
    self.textThree.placeholder = @"请再次输入密码";
    self.textThree.font = [UIFont systemFontOfSize:12];
    self.textThree.textAlignment = NSTextAlignmentLeft;
    self.textThree.clearButtonMode = UITextFieldViewModeAlways;
    self.textThree.secureTextEntry = YES;
    
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(51, 229, 21, 17)];
    UIImageView *twoImageVC3 = [[[UIImageView alloc]initWithFrame:CGRectMake(51, 229, 15, 17)]initWithImage:[UIImage imageNamed:@"lock-0"]];
    UIButton *oneButton3 = [[UIButton alloc]initWithFrame:CGRectMake(51, 251, 271, 0.5)];
    oneButton3.backgroundColor = [UIColor colorWithRed:0.6582 green:0.6581 blue:0.6581 alpha:0.953529094827586];
    self.textThree.leftView = view3;
    [self.textThree setLeftViewMode:UITextFieldViewModeAlways];
    
    //点击登录按钮，即表示你同意《服务协议》 颜色判断
    UILabel *label4 = [[UILabel alloc]initWithFrame:CGRectMake(98, 295, 179, 11)];
    label4.font = [UIFont systemFontOfSize:9];
    NSMutableAttributedString *str4 = [[NSMutableAttributedString alloc]initWithString:@"点击登录按钮，即表示你同意《服务协议》"];
    [str4 addAttribute:NSForegroundColorAttributeName value:[color getColor:@"646464"] range:NSMakeRange(0, 7)];
    [str4 addAttribute:NSForegroundColorAttributeName value:[color getColor:@"3386ff"] range:NSMakeRange(14, 4)];
    label4.attributedText = str4;
    
    //登录按钮
    self.button = [[UIButton alloc]initWithFrame:CGRectMake(52, 316, 272, 40)];
    [self.button setTintColor:[UIColor whiteColor]];
    [self.button setTitle:@"下一步" forState:UIControlStateNormal];
    self.button.titleLabel.font = [UIFont systemFontOfSize:24];
    [self.button setBackgroundColor:[color getColor:@"3285ff"]];
    [self.button addTarget:self action:@selector(cleckButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.textOne];
    [self.view addSubview:label4];
    
    [self.view addSubview:self.textThree];
    [self.view addSubview:twoImageVC3];
    [self.view addSubview:oneButton3];
    
    [self.view addSubview:threeButton1];
    [self.view addSubview:twoVC1];
    [self.view addSubview:twoButton1];
    [self.view addSubview:button1];
    [self.view addSubview:self.textThree];
    [self.view addSubview:OneVC1];
    [self.view addSubview:self.button];
}
//全局下一步按钮的方法判断以及跳转
-(void)cleckButton:(id)sender
{
    //获取短信验证码
    if (self.textOne.text.length<1) {
        showCustomAlterView(@"手机号不能为空");
        return;
    }
    if (self.textTwo.text.length<1) {
        showCustomAlterView(@"请输入密码");
        return;
    }
    if (self.textThree.text.length<1) {
        showCustomAlterView(@"请再次输入密码");
        return;
    }
    if(self.textTwo.text!=self.textThree.text)
    {
        showCustomAlterView(@"两次密码不一致");
        return;
    }
    //跳转
    VerificationViewController *verificationVC = [[VerificationViewController alloc]init];
    verificationVC.phoneNumber = self.textOne.text;
    [self.navigationController pushViewController:verificationVC animated:YES];
    UIBarButtonItem *backIetm = [[UIBarButtonItem alloc]init];
    backIetm.title = @"输入验证码";
    self.navigationItem.backBarButtonItem = backIetm;
    self.navigationItem.backBarButtonItem.style = UIBarButtonItemStylePlain;
    
    
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
