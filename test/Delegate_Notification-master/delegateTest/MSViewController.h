//
//  MSViewController.h
//  delegateTest
//
//  Created by Mayur on 12/9/13.
//  Copyright (c) 2013 webwerks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSViewController1.h"
@interface MSViewController : UIViewController<MSViewController1Delegate>
@property (strong, nonatomic) IBOutlet UIButton *btn;

@property (strong, nonatomic) MSViewController1 *viewController;
- (IBAction)notiAction:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnNoti;

@end
