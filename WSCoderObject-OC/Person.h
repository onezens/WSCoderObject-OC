//
//  Person.h
//  WSCoderObject-OC
//
//  Created by WackoSix on 16/1/25.
//  Copyright © 2016年 www.wackosix.cn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSCoderObject.h"

@interface Person : WSCoderObject

@property (copy, nonatomic) NSString *name;

@property (assign, nonatomic) NSInteger age;

@property (strong, nonatomic) NSDate *birth;

@end
