//
//  Null.m
//  oc
//
//  Created by 邰爱强 on 2019/1/15.
//  Copyright © 2019年 邰爱强. All rights reserved.
//

#import "Null.h"

@implementation Null
+(void)run{
    NSNull *null =  [NSNull null];
    NSLog(@"null等于[NSNull null]? %@",null == [NSNull null]?@"YES":@"NO");
    
    NSFileManager *manager = [NSFileManager defaultManager];
    NSString *homePath = [@"~" stringByExpandingTildeInPath];
    NSDirectoryEnumerator *direnum = [manager enumeratorAtPath:homePath];
    NSMutableArray *files = [NSMutableArray arrayWithCapacity:42];
    NSString *fileName;
    while (fileName = [direnum nextObject]) {
        if([[fileName pathExtension] isEqualToString:@"png"]){
            [files addObject:fileName];
            NSLog(@"file name:%@",fileName);
        }
    }
    
}
@end
