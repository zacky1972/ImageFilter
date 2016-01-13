//
//  MonoFilter.m
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/14.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import "MonoFilter.h"

@implementation MonoFilter

-(void)work:(UInt8 *)pixelPointer {
    UInt8 brightness = (77 * pixelPointer[0] + 28 * pixelPointer[1] + pixelPointer[2]) / 256;
    pixelPointer[0] = brightness;
    pixelPointer[1] = brightness;
    pixelPointer[2] = brightness;
}

@end
