//
//  String.m
//  oc
//
//  Created by 邰爱强 on 2019/1/7.
//  Copyright © 2019年 邰爱强. All rights reserved.
//

#import "String.h"

@implementation String
+(void)run{
    //通过类方法创建字符串
    NSString *createdStringByClassMethod = [NSString stringWithFormat:@"hello string"];
    //通过字面量方法v创建字符串
    NSString *createdStringByLiteral = @"hello string";
    
    //获取字符串长度
    NSUInteger stringLength = [createdStringByLiteral length];
    //比较俩个字符串的内容是否相等
    BOOL isContetnEqual = [createdStringByLiteral isEqualToString:createdStringByClassMethod];
    NSLog(@"isContetnEqual:%@",isContetnEqual?@"YES":@"NO");
    //比较俩个字符串
    BOOL isValueEqual = [createdStringByClassMethod compare:createdStringByLiteral options:NSLiteralSearch];
    BOOL isAddrEqual =createdStringByClassMethod==createdStringByLiteral;
    NSLog(@"isAddrEqual:%@",isAddrEqual?@"YES":@"NO");
    
    //字符串是否有指定前后缀
    BOOL isHasPrefix = [createdStringByClassMethod hasPrefix:@"created"];
    BOOL isHasSuffix = [createdStringByLiteral hasSuffix:@"Method"];
    NSLog(@"isHasPrefix:%d;isHasSuffix:%d",isHasPrefix,isHasSuffix);
    //字符串是否包括某字符串
    NSRange range = [createdStringByClassMethod rangeOfString:@"str"];
    NSLog(@"range:%lu %lu",range.length,range.location);
    
    
    //创建可变的字符串
    NSMutableString *mutableString = [NSMutableString stringWithCapacity:50];
    [mutableString appendFormat:@"he%@",@"llo"];
    [mutableString appendFormat:@"string"];
    //删除范围内的字符串
    [mutableString deleteCharactersInRange:range];
}
@end
