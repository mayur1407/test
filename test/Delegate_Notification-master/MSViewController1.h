//
//  MSViewController1.h
//  delegateTest
//
//  Created by Mayur on 12/9/13.
//  Copyright (c) 2013 webwerks. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MSViewController1Delegate <NSObject>
@required
-(void)getBackTxtValue:(NSString*)txt;

@end

@interface MSViewController1 : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *textfield;
@property (weak) id<MSViewController1Delegate> delegate;
@property BOOL flag;
- (IBAction)dismisAction:(UIButton *)sender;

@end
