//
//  ViewController.m
//  WSCoderObject-OC
//
//  Created by WackoSix on 16/1/25.
//  Copyright © 2016年 www.wackosix.cn. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    Person *xiaoming = [[Person alloc] init];
    xiaoming.name = @"xiaoming";
    xiaoming.age = 22;
    xiaoming.birth = [NSDate date];
    
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    path = [path stringByAppendingPathComponent:@"person.data"];
    
    //归档
    [NSKeyedArchiver archiveRootObject:xiaoming toFile:path];
    
    //解档
    id obj = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    
    NSLog(@"obj:%@",obj);
}

@end
