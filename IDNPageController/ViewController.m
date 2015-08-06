//
//  ViewController.m
//  IDNPageController
//
//  Created by photondragon on 15/7/4.
//  Copyright (c) 2015年 iosdev.net. All rights reserved.
//

#import "ViewController.h"
#import "IDNPageController.h"
#import "ColorController.h"

@interface ViewController ()
<IDNPageControllerDelegate>

@property(nonatomic,strong) IDNPageController* pageController;
@property(nonatomic,strong) NSArray* viewControllers;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	if([self respondsToSelector:@selector(setEdgesForExtendedLayout:)])
		self.edgesForExtendedLayout = 0;

	UIViewController* c1 = [ColorController new];
	UIViewController* c2 = [ColorController new];
	UIViewController* c3 = [ColorController new];
	UIViewController* c4 = [ColorController new];
	UIViewController* c5 = [ColorController new];
	UIViewController* c6 = [ColorController new];
	UIViewController* c7 = [ColorController new];
	UIViewController* c8 = [ColorController new];
	UIViewController* c9 = [ColorController new];
	UIViewController* c10 = [ColorController new];

	c1.view.backgroundColor = [UIColor redColor];
	c2.view.backgroundColor = [UIColor blueColor];
	c3.view.backgroundColor = [UIColor greenColor];
	c4.view.backgroundColor = [UIColor orangeColor];
	c5.view.backgroundColor = [UIColor brownColor];
	c6.view.backgroundColor = [UIColor yellowColor];
	c7.view.backgroundColor = [UIColor magentaColor];
	c8.view.backgroundColor = [UIColor purpleColor];
	c9.view.backgroundColor = [UIColor grayColor];
	c10.view.backgroundColor = [UIColor cyanColor];

	c1.title = @"红色";
	c2.title = @"蓝色";
	c3.title = @"绿色";
	c4.title = @"橙色";
	c5.title = @"褐色";
	c6.title = @"黄色";
	c7.title = @"品红色";
	c8.title = @"紫色";
	c9.title = @"灰色";
	c10.title = @"青色";

	self.pageController = [IDNPageController new];
	self.pageController.isTitleBarOnBottom = YES;
	self.pageController.delegate = self;
	self.pageController.selectedTitleColor = [UIColor colorWithRed:27/255.0 green:159/255.0 blue:224/255.0 alpha:1];
	self.pageController.viewControllers = @[c1, c2, c3, c4, c5, c6, c7, c8, c9, c10];
//	self.pageController.selectedIndex = 3;
	_pageController.view.frame = self.view.bounds;
	_pageController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	[self.view addSubview:_pageController.view];

	self.viewControllers = self.pageController.viewControllers;
}

- (IBAction)left:(id)sender {
//	static int i=0;
//	i++;
//	if(i%2)
//		self.pageController.selectedColor = [UIColor redColor];
//	else
//		self.pageController.selectedColor = [UIColor blackColor];
	if(self.pageController.viewControllers)
		self.pageController.viewControllers = nil;
	else
		self.pageController.viewControllers = self.viewControllers;
}
- (IBAction)right:(id)sender {
	static int i=0;
	i++;
	if(i%2)
		self.pageController.titleFont = [UIFont systemFontOfSize:25];
	else
		self.pageController.titleFont = nil;
}

- (void)pageController:(IDNPageController *)pageController didSelectViewControllerAtIndex:(NSInteger)index
{
	NSLog(@"selectedIndex = %d", (int)index);
}
@end
