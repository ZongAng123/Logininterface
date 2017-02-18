//
//  UITextField+checkLength.m
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "UITextField+checkLength.h"
#import <objc/runtime.h>
#define NUMBERS @"0123456789\n" //只能输数字
@implementation UITextField (checkLength)
-(void)setLength:(NSInteger)length
{
    objc_setAssociatedObject(self, @selector(length), @(length), OBJC_ASSOCIATION_ASSIGN);
}

-(NSInteger)length
{
    return [objc_getAssociatedObject(self, @selector(length)) integerValue];
}

#pragma mark - 长度限制
-(void)setMaxLength:(NSInteger)maxLength
{
    self.length = maxLength;
    [self addTarget:self action:@selector(textFieldDidChanged) forControlEvents:UIControlEventEditingChanged];
}

-(void)textFieldDidChanged
{
    if (self.text.length > self.length) {
        self.text = [self.text substringToIndex:self.length];
    }
}

#pragma mark - 输入类型
-(void)numberOnly:(BOOL)flag
{
    if (flag == YES) {
        [self addTarget:self action:@selector(onlyNumerTFChanged) forControlEvents:UIControlEventEditingChanged];
    }
}


-(void)onlyNumerTFChanged
{
    
    if ([self.text length] ==  0) {
        self.text = nil;
        return;
    }
    NSUInteger index = [self.text length] - 1;
    NSString *string = [self.text substringFromIndex:index];
    NSCharacterSet *cs;
    cs = [[NSCharacterSet characterSetWithCharactersInString:NUMBERS]invertedSet];
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs]componentsJoinedByString:@""];
    BOOL canChange = [string isEqualToString:filtered];
    if (canChange == NO) {
        
        if ([self.text length] == 0) {
            self.text = nil;
        }else
        {
            self.text = [self.text substringToIndex:[self.text length] - 1];
        }
        
    }
}

@end
