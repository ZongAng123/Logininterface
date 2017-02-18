//
//  Tool.m
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "Tool.h"
#import "MBProgressHUD.h"
#import "YL_CustomAlterView.h"
#import "AppDelegate.h"
#import <sys/sysctl.h>

static MBProgressHUD *_loadingHud = nil;
void showCustomAlterView(NSString *str)
{
    if (str==nil || [str length]<1) {
        return;
    }
    
    YL_CustomAlterView *customAlartView = (YL_CustomAlterView *)[theApp.window viewWithTag:980153];
    if (customAlartView) {
        [customAlartView removeFromSuperview];
        customAlartView = nil;
    }
    customAlartView = [[YL_CustomAlterView alloc] initWithFrame:CGRectMake(theApp.window.center.x-80, (theApp.window.frame.size.height - 120) / 2, 161, 78)] ;
    customAlartView.titleLabel.text = str;
    customAlartView.tag = 980153;
    
    [theApp.window addSubview: customAlartView];
}
void showIndicator (BOOL flog,UIView *view)
{
    if (flog) {
        if (!_loadingHud) {
            _loadingHud = [[MBProgressHUD alloc]initWithView:view];
            _loadingHud.mode = MBProgressHUDModeIndeterminate;
            _loadingHud.labelText =@"玩命加载中";
            [view addSubview:_loadingHud];
            [_loadingHud show:flog];
        }
    }
}
void hidenIndicator(BOOL flog)
{
    if(_loadingHud)
    {
        [_loadingHud hide:flog];
        _loadingHud = nil;
        
    }
}


//@implementation Tool
//
//@end
