//
//  ConpositeFilter.m
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/14.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import "CompositeFilter.h"

@implementation CompositeFilter // Composite Pattern

-(id)init {
    if(self = [super init]) {
        filters = [NSMutableArray new];
    }
    return  self;
}

-(UIImage *)convert:(UIImage *)image {
    for(id filter in filters) { // Iterator Pattern
        if([filter isKindOfClass:[Filter class]]) {
            // 取り出した要素が Filter クラスもしくはそのサブクラスのインスタンスであることを確認して convert を呼び出す
            image = [filter convert:image];
        }
    }
    return image;
}

-(void)add:(Filter *)filter {
    [filters addObject:filter];
}

-(void)clear {
    [filters removeAllObjects];
}

@end
