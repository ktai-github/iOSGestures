//
//  SwipeViewController.h
//  iOSGestures
//
//  Created by KevinT on 2018-02-24.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeViewController : UIViewController
@property (assign) BOOL open;

//@property (weak, nonatomic) UIView *viewOrange;
//@property (weak, nonatomic) UIView *viewBlack;
//@property (weak, nonatomic) UIView *viewGreen;
@property (weak, nonatomic) IBOutlet UIView *viewWhite;

@property (weak, nonatomic) IBOutlet UIView *viewBrown;

@property (weak, nonatomic) IBOutlet UIView *viewGreen;

@end
