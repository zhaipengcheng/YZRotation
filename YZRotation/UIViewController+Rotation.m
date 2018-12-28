//
//  UIViewController+Rotation.m
//  YZRotation
//
//  Created by 未魔 on 2018/12/25.
//  Copyright © 2018 未魔. All rights reserved.
//

#import "UIViewController+Rotation.h"

@implementation UIViewController (Rotation)

// 默认不支持自动转屏并且固定竖屏方向

// 是否支持自动转屏
- (BOOL)shouldAutorotate {
    return NO;
}

// 支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

@end
