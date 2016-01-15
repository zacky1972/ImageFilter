//
//  ConpositeFilter.h
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/14.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import "Filter.h"

@interface CompositeFilter : Filter {
    NSMutableArray *filters;
}

-(UIImage *)convert:(UIImage *)image;

-(void)add:(Filter *)filter;

@end
