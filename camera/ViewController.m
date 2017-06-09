//
//  ViewController.m
//  camera
//
//  Created by 陈东芝 on 17/6/9.
//  Copyright © 2017年 陈东芝. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <DZFBBCustomCameraDelegate> {
    UIImageView *iv;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    iv = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:iv];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 100, 200, 50);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)test {
    DZFBBCustomCamera *ca = [[DZFBBCustomCamera alloc] init];
    ca.delegate   = self;
    [self presentViewController:ca animated:YES completion:nil];
}

- (void)DZFBBCustomCamera:(UIImage *)image {
    iv.image = image;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
