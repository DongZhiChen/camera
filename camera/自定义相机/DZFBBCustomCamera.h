//
//  DZFBBCustomCamera.h
//  camera
//
//  Created by 陈东芝 on 17/6/9.
//  Copyright © 2017年 陈东芝. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DZFBBCustomCameraDelegate;
@interface DZFBBCustomCamera : UIViewController
@property (nonatomic, assign) id<DZFBBCustomCameraDelegate> delegate;
@property (nonatomic, readonly) UIImage *photo;

@end

@protocol DZFBBCustomCameraDelegate <NSObject>
- (void)DZFBBCustomCamera:(UIImage *)image;
@end
