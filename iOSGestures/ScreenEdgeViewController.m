//
//  ScreenEdgeViewController.m
//  iOSGestures
//
//  Created by KevinT on 2018-02-25.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ScreenEdgeViewController.h"

@interface ScreenEdgeViewController () <UIGestureRecognizerDelegate> {
  CGFloat _centerX;

}

@property (weak, nonatomic) UIView *panView;
@property (weak, nonatomic) UIView *edgeView;
@property (weak, nonatomic) UISwitch *multipleGesturesSwitch;
//@property (weak, nonatomic) CGPoint originalLocation;

@end

@implementation ScreenEdgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//
//  CGFloat width = 200;
//  CGFloat height = 200;
//
//  CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
//
//  UIView *view = [[UIView alloc] initWithFrame:frame];
//  view.userInteractionEnabled = YES;
//  view.backgroundColor = [UIColor redColor];
//  [self.view addSubview:view];
//
//  UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(viewRotated:)];
//  [view addGestureRecognizer:rotationGesture];
  
  
  CGFloat width = 200;
  CGFloat height = 200;
  
  CGRect frame = CGRectMake(CGRectGetMaxX(self.view.bounds) - 25, CGRectGetMidY(self.view.bounds) - height/2, width, height);
  
  UIView *view = [[UIView alloc] initWithFrame:frame];
  view.userInteractionEnabled = YES;
  view.backgroundColor = [UIColor greenColor];
  [self.view addSubview:view];
  
  UIScreenEdgePanGestureRecognizer *screenEdgePannedGesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(viewScreenEdgePanned:)];
  screenEdgePannedGesture.edges = UIRectEdgeRight;
  screenEdgePannedGesture.delegate = self;
  [self.view addGestureRecognizer:screenEdgePannedGesture];
  
  UIPanGestureRecognizer *screenPannedGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewPanned:)];
  [self.view addGestureRecognizer:screenPannedGesture];
  
//    _centerX = self.view.bounds.size.width / 2;
  _centerX = CGRectGetMaxX(self.view.bounds) - 25;
  
}

- (void)viewScreenEdgePanned:(UIScreenEdgePanGestureRecognizer *) sender {
  
  UIView *view = [self.view hitTest:[sender locationInView:sender.view] withEvent:nil];
  
  if (sender.state == UIGestureRecognizerStateBegan || sender.state == UIGestureRecognizerStateChanged) {
    CGPoint translation = [sender translationInView:sender.view];
    
    view.center = CGPointMake(_centerX, view.center.y);
//    view.center = CGPointMake(_centerX + translation.x, view.center.y);
  } else {
    [UIView animateWithDuration:.3 animations:^{view.center = CGPointMake(_centerX, view.center.y);}];
  }
  
//  CGFloat scale = sender.scale;
//  sender.view.transform = CGAffineTransformMakeScale(scale, scale);
//
//  scale = 1.0;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
  
  // You can customize the way in which gestures can work
  
  // Enabling multiple gestures will allow all of them to work together, otherwise only the topmost view's gestures will work (i.e. PanGesture view on bottom)
  
  return self.multipleGesturesSwitch.on;
}

- (void)viewPanned:(UIPanGestureRecognizer *) sender {
  
  [UIView animateWithDuration:0.5 animations:^{
    sender.view.frame = CGRectOffset(sender.view.frame, -5.0, 0.0);
  }];
  
//  CGPoint translation = [sender translationInView:sender.view];
  
//  CGPoint translationInView = [sender translationInView:self.view];
//  CGPoint oldCenter = sender.view.center;
//  CGPoint newCenter = CGPointMake(CGRectGetMaxX(self.view.bounds) - 25, CGRectGetMidY(self.view.bounds) - 100);
//  sender.view.center = newCenter;
//  [sender setTranslation:CGPointZero inView:self.view];
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
   
