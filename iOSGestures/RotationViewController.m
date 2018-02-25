//
//  RotationViewController.m
//  iOSGestures
//
//  Created by KevinT on 2018-02-25.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  CGFloat width = 200;
  CGFloat height = 200;
  
  CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
  
  UIView *view = [[UIView alloc] initWithFrame:frame];
  view.userInteractionEnabled = YES;
  view.backgroundColor = [UIColor redColor];
  [self.view addSubview:view];
  
  UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(viewRotated:)];
  [view addGestureRecognizer:rotationGesture];

}

- (void)viewRotated:(UIRotationGestureRecognizer *) sender {
  if (sender.state == UIGestureRecognizerStateBegan || sender.state == UIGestureRecognizerStateChanged) {
    sender.view.transform = CGAffineTransformRotate(sender.view.transform, sender.rotation);
    sender.rotation = 0;
  }
//  CGFloat scale = sender.scale;
//  sender.view.transform = CGAffineTransformMakeScale(scale, scale);
//
//  scale = 1.0;
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
