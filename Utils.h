//
//  Utils.h
//  oc
//
//  Created by 邰爱强 on 2019/1/7.
//  Copyright © 2019年 邰爱强. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utils : NSObject{
    NSString *TAG;
}
-(instancetype)init:(NSString *)tag;
-(void)log:(NSString *)content,...;
@end

NS_ASSUME_NONNULL_END
