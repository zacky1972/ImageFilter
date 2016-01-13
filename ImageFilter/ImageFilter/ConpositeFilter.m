//
//  ConpositeFilter.m
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/14.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import "ConpositeFilter.h"

@implementation ConpositeFilter

-(id)init {
    if(self = [super init]) {
        filters = [NSMutableArray new];
    }
    return  self;
}

-(UIImage *)convert:(UIImage *)image {
    for(id object in filters) {
        if([object isKindOfClass:[Filter class]]) {
            Filter *filter = (Filter *)object;
            image = [filter convert: image];
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
