//
//  ViewController.m
//  ImageFilter
//
//  Created by 山崎進 on 2016/01/13.
//  Copyright © 2016年 zacky1972. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _button2Image = [NSDictionary dictionaryWithObjectsAndKeys:
            [UIImage imageNamed:@"lena256.ppm"], @"Image 1",
            [UIImage imageNamed:@"lena_spnoise.ppm"], @"Image 2",
            nil];
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 20, 300, 300)];
    [self.view addSubview:_imageView];
    [self changeCurrentImage:@"Image 1"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeCurrentImage:(NSString *)buttonName {
    _imageView.image = (UIImage *)[_button2Image objectForKey:buttonName];
}

- (IBAction)setImage:(id)sender {
    if([sender isKindOfClass:[UIButton class]]) {
        UIButton *button = (UIButton *)sender;
        [self changeCurrentImage:button.currentTitle];
    }
}

@end
