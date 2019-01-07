//
//  ArrayExample.m
//  oc
//
//  Created by 邰爱强 on 2019/1/7.
//  Copyright © 2019年 邰爱强. All rights reserved.
//

#import "ArrayExample.h"

@implementation ArrayExample

+(void)run{
    //实例化utils
     //Utils *utils = [[Utils alloc] init:@"ArrayExample"];
    /*
     NSArray 数组内的成员只能是oc对象
     数组不能存储 nil 因为nil用来识别数组结束
     */
    //NSString
    
    //number对象
    NSNumber *number = @77521;
    //通过类方法来创建数组
    NSArray *cretedByClassMethod = [NSArray arrayWithObjects:@"string",number,nil];
    //通过字面量的方式来创建
    NSArray *createdByLiteral = @[@"string",@"two"];
    
    /*
     Title:数组方法
     */
    //获取数组长度
    //NSUInteger 无符号数字 数字笔记参考 Number;
    NSUInteger arrayLength = [createdByLiteral count];
    //获取指定的某一项
    NSNumber *itemForIndex = [cretedByClassMethod objectAtIndex:1];
    //通过字面量访问数组某一项
    NSNumber *item = cretedByClassMethod[1];
    //循坏方法
    //fory循环
    for(int i=0;i<arrayLength;i++){
        NSLog(@"for循坏createdByLiteral 第%d项是%@",i,[createdByLiteral objectAtIndex:i]);
    }
    //将数组合并成字符串
    NSString *stringByArray = [cretedByClassMethod componentsJoinedByString:@"-我是切割符号-"];
    NSLog(@"%@",stringByArray);
    /*
     Title:可变数组
     */
    //创建可变数组，不能通过字面量的方式创建
    NSMutableArray *mutableArray = [NSMutableArray arrayWithCapacity:10];
    //在数组末尾天啊及对象
    [mutableArray addObject:@"你好"];
    //删除指定项
    [mutableArray removeObjectAtIndex:0];
    //枚举数组
    //获取枚举器反向方法
    NSEnumerator *arrayEnum = [mutableArray objectEnumerator];
//    while ((NSString *item = arrayEnum.nextObject)) {
//        [ArrayExample log:@"%@",item, nil];
//    }
    for(NSString *item in mutableArray){
        NSLog(@"%@",item);
    }
    [mutableArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@",obj);
    }];
};
@end
