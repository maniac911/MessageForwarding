//
//  main.m
//  MessageForwarding
//
//  Created by DaVinci on 2016/11/21.
//  Copyright © 2016年 mp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *car = [Car new];
        [car run];
    }
    return 0;
}
