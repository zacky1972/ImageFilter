//
//  ViewController.h
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/13.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSDictionary *button2Image;
@property UIImageView *imageView;

- (void)changeCurrentImage:(NSString *)buttonName;

- (IBAction)setImage:(id)sender;

@end

