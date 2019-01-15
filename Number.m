//
//  Number.m
//  oc
//
//  Created by 邰爱强 on 2019/1/15.
//  Copyright © 2019年 邰爱强. All rights reserved.
//

#import "Number.h"

@implementation Number
+(void)run{
    //将基本数值封装为Number对象
    NSNumber *number;
    number = @'x'; // 字符型
    number = @12345;//整形
    number = @1234ul;//无符号长整数
    number = @1234ll;//long
    number = @123.45f;//浮点数
    number = @123.45;//双浮点数
    number = @YES;//布尔值
    
    //提取基本类型的值
    [number boolValue];
    //其他方法
    [number charValue];
    [number intValue];
    [number floatValue];
    [number stringValue];
    
    //封装结构体
    NSRect rect = NSMakeRect(1, 2, 30, 40);
    //&操作符 用来获取 存储的变量的地址
    NSValue *value = [NSValue valueWithBytes:&rect objCType:@encode(NSRect)];
    //将rect经由NSValue包装后存入NSArray
    NSArray *array = @[value];
    //获取上诉存入的NSRect 数据
    NSValue *v = [array objectAtIndex:0];
    //[v getValue:&rect];
    NSLog(@"v %@",v);
    
    //cocoa提供了将常用的struct型数据转换成NSValue的便捷方法
    //valueWith[type] 存
    //[type]Value 取
    //type enum{point,size,rect}
    NSValue *v1 = [NSValue valueWithRect:rect];
    NSRect r1 = [v1 rectValue];
}
@end
