//
//  Utils.m
//  oc
//
//  Created by 邰爱强 on 2019/1/7.
//  Copyright © 2019年 邰爱强. All rights reserved.
//

#import "Utils.h"

@implementation Utils
-(instancetype)init:(NSString *)tag{
    self = [super init];
    if(self != nil){
        TAG = tag;
    }
    return self;
};
//这里加上一个宏 让系统直接帮我们加上了参数结尾的那个nil
-(void)log:(NSString *)str,...NS_REQUIRES_NIL_TERMINATION{
    va_list list;
    va_start(list, str);
    NSString * temStr = str;
    NSMutableString *content=[NSMutableString stringWithCapacity:50];
    
    [content appendString:TAG];
    [content appendString:@":"];
    [content appendString:str];
    while ((temStr = va_arg(list, NSString*))!=nil) {
         NSLog(@"s %@",temStr);
        [content appendString:temStr];
    }
    NSLog(@"%@",content);
    va_end(list);
}
@end
