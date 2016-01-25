//
//  Person.m
//  WSCoderObject-OC
//
//  Created by WackoSix on 16/1/25.
//  Copyright © 2016年 www.wackosix.cn. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@, age:%zd, birth:%@", _name, _age, _birth];
}

@end
