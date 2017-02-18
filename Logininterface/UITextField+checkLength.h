//
//  UITextField+checkLength.h
//  Logininterface
//
//  Created by 纵昂 on 2017/2/18.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (checkLength)<UITextFieldDelegate>
@property(nonatomic,assign)NSInteger length;

#pragma mark - 限制textfield的最大长度
/* 限制textfield的最大长度 */
-(void)setMaxLength:(NSInteger)maxLength;

#pragma mark - 限制输入只能是数字
/* 限制输入只能是数字 */
-(void)numberOnly:(BOOL)flag;

@end
