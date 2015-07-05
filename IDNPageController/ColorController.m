//
//  ColorController.m
//  IDNPageController
//
//  Created by photondragon on 15/7/6.
//  Copyright (c) 2015年 iosdev.net. All rights reserved.
//

#import "ColorController.h"

@interface ColorController ()

@end

@implementation ColorController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	NSLog(@"%@: %s", self.title, __func__);
}
- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	NSLog(@"%@: %s", self.title, __func__);
}
- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	NSLog(@"%@: %s", self.title, __func__);
}
- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
	NSLog(@"%@: %s", self.title, __func__);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
