//
//  Filter.m
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/14.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import "Filter.h"

@implementation Filter

-(UIImage *)convert:(UIImage *)image { // convert と work で Template Method Pattern を形成しています
    // ループに必要な情報の取り出し
    size_t width = CGImageGetWidth(image.CGImage);
    size_t height = CGImageGetHeight(image.CGImage);
    size_t bytesPerRow = CGImageGetBytesPerRow(image.CGImage);
    // UIImage から Bitmap(buffer) への変換
    CFDataRef dataRef = CGDataProviderCopyData(CGImageGetDataProvider(image.CGImage));
    UInt8 *buffer = (UInt8 *)CFDataGetBytePtr(dataRef);

    // Bitmap(buffer)への画像処理ループ (work メソッドの呼び出し)
    for(int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            [self work:(buffer + y * bytesPerRow + x * 3)];
        }
    }
    
    // Bitmap(buffer) から UIImage に変換してリターン
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

-(void)add:(Filter *)filter { // Composite Pattern
}

-(void)clear { // Composite Pattern
}

-(void)work:(UInt8 *)pixelPointer { // Template Method Pattern
}


@end
