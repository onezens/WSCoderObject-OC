# WSCoderObject-OC
WSCoderObject-OC,Object-C对象一键归档解档工具类(NSCoding)

# 用法(Usage)
1. 将 WSCoderObject.h & .m 文件导入你的项目
2. 把你需要归档的类文件，导入头文件`#import "WSCoderObject.h"`,并且你的类继承于 WSCoderObject
3. 通过 `[NSKeyedArchiver archiveRootObject:object toFile:path]` 来归档你需要保存的类; `[NSKeyedUnarchiver unarchiveObjectWithFile:path]` 方法来解档保存在本地的类。

#Demo
无论你的类有多少个属性，只需要继承于：WSCoderObject

```
 #import <Foundation/Foundation.h>
 #import "WSCoderObject.h"

 @interface Person : WSCoderObject

 @property (copy, nonatomic) NSString *name;

 @property (assign, nonatomic) NSInteger age;

 @property (strong, nonatomic) NSDate *birth;

 @end
 
```

自动实现归档、解档

```
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

```



