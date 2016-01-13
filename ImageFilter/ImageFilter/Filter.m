//
//  Filter.m
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/14.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import "Filter.h"

@implementation Filter

-(UIImage *)convert:(UIImage *)image {
    size_t width = CGImageGetWidth(image.CGImage);
    size_t height = CGImageGetHeight(image.CGImage);
    size_t bytesPerRow = CGImageGetBytesPerRow(image.CGImage);
    CFDataRef dataRef = CGDataProviderCopyData(CGImageGetDataProvider(image.CGImage));
    UInt8 *buffer = (UInt8 *)CFDataGetBytePtr(dataRef);
    for(int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            [self work:(buffer + y * bytesPerRow + x * 3)];
        }
    }
    return [[UIImage alloc] initWithCGImage:
            CGImageCreate(width, height,
                          CGImageGetBitsPerComponent(image.CGImage),
                          CGImageGetBitsPerPixel(image.CGImage),
                          bytesPerRow,
                          CGImageGetColorSpace(image.CGImage),
                          CGImageGetBitmapInfo(image.CGImage),
                          CGDataProviderCreateWithCFData(CFDataCreate(NULL, buffer, CFDataGetLength(dataRef))),
                          NULL,
                          CGImageGetShouldInterpolate(image.CGImage),
                          CGImageGetRenderingIntent(image.CGImage))];
}

-(void)work:(UInt8 *)pixelPointer {
}


@end
