//
//  UITabBarController+Rotation.m
//  YZRotation
//
//  Created by 未魔 on 2018/12/25.
//  Copyright © 2018 未魔. All rights reserved.
//

#import "UITabBarController+Rotation.h"

@implementation UITabBarController (Rotation)

// 是否支持自动转屏
- (BOOL)shouldAutorotate {
    if (self.selectedViewController != nil) {
        UIViewController *vc = self.viewControllers[self.selectedIndex];
        if ([vc isKindOfClass:[UINavigationController class]]) {
            UINavigationController *nav = (UINavigationController *)vc;
            return [nav.topViewController shouldAutorotate];
        } else {
            return [vc shouldAutorotate];
        }
    } else {
        return YES;
    }
}

// 支持哪些屏幕方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if (self.selectedViewController != nil) {
        UIViewController *vc = self.viewControllers[self.selectedIndex];
        if ([vc isKindOfClass:[UINavigationController class]]) {
            UINavigationController *nav = (UINavigationController *)vc;
            return [nav.topViewController supportedInterfaceOrientations];
        } else {
            return [vc supportedInterfaceOrientations];
        }
    } else {
        return UIInterfaceOrientationMaskPortrait;
    }
}

@end
