//
//  ContrastFilter.m
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/14.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import "ContrastFilter.h"

@implementation ContrastFilter

-(UInt8)calc:(UInt8)value {
    return (UInt8)(0.5f * (value - 127.5f));
}

-(void)work:(UInt8 *)pixelPointer {
    pixelPointer[0] += [self calc:pixelPointer[0]];
    pixelPointer[1] += [self calc:pixelPointer[1]];
    pixelPointer[2] += [self calc:pixelPointer[2]];
}

@end
