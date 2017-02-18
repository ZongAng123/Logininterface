//
//  YL_CustomAlterView.m
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "YL_CustomAlterView.h"

@implementation YL_CustomAlterView
- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"alert_bg"]];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake((self.frame.size.width-150)/2, (self.frame.size.height-40)/2, 150, 40)];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.numberOfLines = 2;
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
    }
    return self;
}

- (void)didMoveToSuperview
{
    [self performSelectorOnMainThread:@selector(hideView) withObject:nil waitUntilDone:NO];
}

- (void)hideView
{
    [UIView beginAnimations:@"alter" context:nil];
    [UIView setAnimationDelay:1.0f];
    [UIView setAnimationDuration:1.5f];
    self.alpha = 0;
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(viewDidHidden)];
    [UIView commitAnimations];
}
- (void) viewDidHidden
{
    [self performSelectorOnMainThread:@selector(removeFromSuperview) withObject:nil waitUntilDone:NO];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
