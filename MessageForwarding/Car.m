//
//  Car.m
//  MessageForwarding
//
//  Created by DaVinci on 2016/11/21.
//  Copyright © 2016年 mp. All rights reserved.
//

#import "Car.h"
#import "Person.h"
#import "Animal.h"
@implementation Car
//- (id)forwardingTargetForSelector:(SEL)aSelector
//{
//    return [Person new];
//}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    NSString *selName = NSStringFromSelector(aSelector);
    if ([selName isEqualToString:@"run"]) {
        
        return [NSMethodSignature signatureWithObjCTypes:"v:@"];
    }
    
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    SEL sel = [anInvocation selector];
    Animal *animal = [Animal new];
    if ([animal respondsToSelector:sel]) {
        
        [anInvocation invokeWithTarget:animal];
    }
}
@end
