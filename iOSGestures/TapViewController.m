//
//  TapViewController.m
//  iOSGestures
//
//  Created by KevinT on 2018-02-24.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController
- (void) viewDidLoad {
  [super viewDidLoad];
  
  CGFloat width = 100;
  CGFloat height = 100;
  
  CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
  
  UIView *view = [[UIView alloc] initWithFrame:frame];
  
  view.backgroundColor = [UIColor orangeColor];
  [self.view addSubview:view];
  
  UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
  [view addGestureRecognizer:tapGesture];
}

- (void)viewTapped:(UITapGestureRecognizer *) sender {
//  CGFloat scale = sender.scale;
//  sender.view.transform = CGAffineTransformMakeScale(scale, scale);
  
//  scale = 1.0;
//  UIColor *purpleColor = [UIColor purpleColor];
//  UIColor *orangeColor = [UIColor orangeColor];
//  NSLog(@"%@", sender.view.backgroundColor);
  
  //this works!
//  sender.view.backgroundColor = (sender.view.backgroundColor == [UIColor orangeColor]) ? [UIColor purpleColor] : [UIColor orangeColor];

  sender.view.backgroundColor =
  [sender.view.backgroundColor isEqual:[UIColor orangeColor]] ?
  [UIColor purpleColor] : [UIColor orangeColor];
//  sender.view.backgroundColor = [UIColor purpleColor];
  
//  if (sender.view.backgroundColor == [UIColor purpleColor]) {
//    sender.view.backgroundColor = [UIColor orangeColor];
//
//  } else {
//    sender.view.backgroundColor = [UIColor purpleColor];
//  }
}
@end
