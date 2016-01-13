//
//  ViewController.h
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/13.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Filter.h"

@interface ViewController : UIViewController

@property NSDictionary *button2Image;
@property Filter *filter;
@property UIImage *currentImage;
@property UIImageView *imageView;

- (void)changeCurrentImage:(NSString *)buttonName;

- (IBAction)setImage:(id)sender;

- (IBAction)resetFilter:(id)sender;

- (IBAction)setMonoFilter:(id)sender;

@end

