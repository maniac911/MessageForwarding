//
//  Person.m
//  MessageForwarding
//
//  Created by DaVinci on 2016/11/21.
//  Copyright © 2016年 mp. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
@implementation Person

void run (id self,SEL _cmd)
{
    NSLog(@"Person is running");
}

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == @selector(run)) {
        
        class_addMethod(self, sel, (IMP)run, "v@:");
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}



@end
