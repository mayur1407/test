//
//  MSViewController1.m
//  delegateTest
//
//  Created by Mayur on 12/9/13.
//  Copyright (c) 2013 webwerks. All rights reserved.
//

#import "MSViewController1.h"

@interface MSViewController1 ()

@end

@implementation MSViewController1
@synthesize delegate,textfield,flag;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismisAction:(UIButton *)sender {
    
    if (flag) {
        
        [[NSNotificationCenter defaultCenter]postNotificationName:@"NoteFromTwo" object:self.textfield.text];
    }
    else{
        [delegate getBackTxtValue:self.textfield.text];

    
    }

}

@end
