//
//  FirstRotationViewController.m
//  YZRotation
//
//  Created by 未魔 on 2018/12/25.
//  Copyright © 2018 未魔. All rights reserved.
//

#import "FirstRotationViewController.h"

@interface FirstRotationViewController ()

@end

@implementation FirstRotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

@end