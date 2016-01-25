//
//  WSCoderObject.m
//  WSCoderObject-OC
//
//  Created by WackoSix on 16/1/25.
//  Copyright © 2016年 www.wackosix.cn. All rights reserved.
//

#import "WSCoderObject.h"
#import <objc/runtime.h>

@implementation WSCoderObject

///  解档
- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super init]) {
    
        unsigned int count = 0;
        
        Ivar *ivars = class_copyIvarList([self class], &count);
        
        for (NSInteger i=0; i<count; i++) {
            
            Ivar ivar = ivars[i];
            NSString *name = [[NSString alloc] initWithUTF8String:ivar_getName(ivar)];
            id value = [coder decodeObjectForKey:name];
            [self setValue:value forKey:name];
        }
        
        free(ivars);
    }
    return self;
}

///  归档
- (void)encodeWithCoder:(NSCoder *)coder
{
    
    unsigned int count = 0;
    
    Ivar *ivars = class_copyIvarList([self class], &count);
    
    for (NSInteger i=0; i<count; i++) {
        
        Ivar ivar = ivars[i];
        NSString *name = [[NSString alloc] initWithUTF8String:ivar_getName(ivar)];
        id value = [self valueForKey:name];
        [coder encodeObject:value forKey:name];
    }
    
    free(ivars);
}

@end
