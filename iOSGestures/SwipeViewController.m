//
//  SwipeViewController.m
//  iOSGestures
//
//  Created by KevinT on 2018-02-24.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

- (void) slideToRightWithGestureRecognizer: (UISwipeGestureRecognizer *) gestureRecognizer;

- (void) slideToLeftWithGestureRecognizer: (UISwipeGestureRecognizer *) gestureRecognizer;

//-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;
@end

@implementation SwipeViewController

- (void) viewDidLoad {
  [super viewDidLoad];
  
//  //orange view
//  CGRect orangeFrame = CGRectMake(0, 234, 320, 100);
//  UIView *viewOrange = [[UIView alloc] initWithFrame:orangeFrame];
//  viewOrange.backgroundColor = [UIColor orangeColor];
//  [self.view addSubview:viewOrange];
//  
//  //black view
//  CGRect blackFrame = CGRectMake(320, 234, 320, 100);
//  UIView *viewBlack = [[UIView alloc] initWithFrame:blackFrame];
//  viewBlack.backgroundColor = [UIColor blackColor];
//  [self.view addSubview:viewBlack];
//  
//  //green view
//  CGRect greenFrame = CGRectMake(320, 234, 320, 100);
//  UIView *viewGreen = [[UIView alloc] initWithFrame:greenFrame];
//  viewGreen.backgroundColor = [UIColor greenColor];
//  [self.view addSubview:viewGreen];
  
  UISwipeGestureRecognizer *swipeRightWhite = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
  swipeRightWhite.direction = UISwipeGestureRecognizerDirectionRight;
  
  UISwipeGestureRecognizer *swipeLeftWhite = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
  swipeLeftWhite.direction = UISwipeGestureRecognizerDirectionLeft;
  
  [self.viewWhite addGestureRecognizer:swipeRightWhite];
  [self.viewWhite addGestureRecognizer:swipeLeftWhite];
  
//  UISwipeGestureRecognizer *swipeRightBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
//  swipeRightBlack.direction = UISwipeGestureRecognizerDirectionRight;
//  [self.viewBlack addGestureRecognizer:swipeRightBlack];
//
//  UISwipeGestureRecognizer *swipeLeftGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
//  swipeLeftGreen.direction = UISwipeGestureRecognizerDirectionLeft;
//  [self.viewGreen addGestureRecognizer:swipeLeftGreen];

  
  //bottom view brown colour
//  CGFloat widthBottom = 300;
//  CGFloat heightBottom = 50;
//
//  CGRect bottomFrame = CGRectMake(CGRectGetMidX(self.view.bounds) - widthBottom/2, CGRectGetMidY(self.view.bounds) - heightBottom/2, widthBottom, heightBottom);
//
//  UIView *bottomView = [[UIView alloc] initWithFrame:bottomFrame];
////  bottomView.clipsToBounds = YES;
//  bottomView.backgroundColor = [UIColor brownColor];
//  [self.view addSubview:bottomView];
  
  //---------
  //top view white colour
  
//  CGFloat widthTop = 300;
//  CGFloat heightTop = 50;
//
//  CGRect topFrame = CGRectMake(0, 0, widthTop, heightTop);
//
//  UIView *topView = [[UIView alloc] initWithFrame:topFrame];
////  topView.clipsToBounds = YES;
//  topView.backgroundColor = [UIColor whiteColor];
//  [bottomView addSubview:topView];
  
  //---------
  
//  UISwipeGestureRecognizer *gestureLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft:)];
//  [gestureLeft setDirection:(UISwipeGestureRecognizerDirectionLeft)];
//  [topView addGestureRecognizer:gestureLeft];
//
//  UISwipeGestureRecognizer *gestureRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight:)];
//  [gestureRight setDirection:(UISwipeGestureRecognizerDirectionRight)];
//  [topView addGestureRecognizer:gestureRight];
}

- (void) swipeLeft: (UISwipeGestureRecognizer *) sender {
//  if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
//    self.open = YES;
//  } else {
//    self.open = NO;
//  }
//  if ((sender.state == UIGestureRecognizerStateChanged) || (sender.state == UIGestureRecognizerStateEnded)) {
//
//    UIPanGestureRecognizer *panGestureRecognizer;
//    CGPoint translationInView = [panGestureRecognizer translationInView:self.view];
//    CGPoint oldCenter = panGestureRecognizer.view.center;
//    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
//    sender.view.center = newCenter;
//    [panGestureRecognizer setTranslation:CGPointZero inView:self.view];
//  }
}

- (void) swipeRight: (UISwipeGestureRecognizer *) sender {
//  if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
//    self.open = YES;
//  } else {
//    self.open = NO;
//  }
  //  if ((sender.state == UIGestureRecognizerStateChanged) || (sender.state == UIGestureRecognizerStateEnded)) {
  //
  //    UIPanGestureRecognizer *panGestureRecognizer;
  //    CGPoint translationInView = [panGestureRecognizer translationInView:self.view];
  //    CGPoint oldCenter = panGestureRecognizer.view.center;
  //    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
  //    sender.view.center = newCenter;
  //    [panGestureRecognizer setTranslation:CGPointZero inView:self.view];
  //  }
}

- (void) slideToRightWithGestureRecognizer: (UISwipeGestureRecognizer *) gestureRecognizer {
  [UIView animateWithDuration:0.5 animations:^{
    self.viewWhite.frame = CGRectOffset(self.viewWhite.frame, 60.0, 0.0);
//    self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, 30.0, 0.0);
//    self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, 30.0, 0.0);

  }];
}

- (void) slideToLeftWithGestureRecognizer: (UISwipeGestureRecognizer *) gestureRecognizer {
  [UIView animateWithDuration:0.5 animations:^{
    self.viewWhite.frame = CGRectOffset(self.viewWhite.frame, -60.0, 0.0);
//    self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, -30.0, 0.0);
//    self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, -30.0, 0.0);
    
  }];
}
@end
