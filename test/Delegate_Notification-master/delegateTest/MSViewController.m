//
//  MSViewController.m
//  delegateTest
//
//  Created by Mayur on 12/9/13.
//  Copyright (c) 2013 webwerks. All rights reserved.
//

#import "MSViewController.h"

@interface MSViewController ()

@end

@implementation MSViewController
@synthesize btn,viewController;
- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(void)getBackTxtValue:(NSString *)txt
{
    NSLog(@"text::%@",txt);
    if ([txt isEqualToString:@""]) {
        txt=@"Button";
    }
    [self.btn setTitle:txt forState:UIControlStateNormal];
    [self.viewController dismissViewControllerAnimated:YES completion:nil];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    self.viewController=[segue destinationViewController];
    [self.viewController setDelegate:self];
}
- (IBAction)notiAction:(UIButton *)sender {
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(handleNotification:)
     name:@"NoteFromTwo"
     object:nil];
    
    self.viewController=[self.storyboard instantiateViewControllerWithIdentifier:@"MSViewController1"];
    self.viewController.flag=TRUE;
    [self presentViewController:self.viewController animated:YES completion:nil];
}

-(void)handleNotification:(NSNotification *)pNotification
{
    NSLog(@"#1 received message = %@",(NSString*)[pNotification object]);
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    NSString *str=(NSString*)[pNotification object];
    if ([str isEqualToString:@""]) {
        str=@"Notification";
    }
    [self.btnNoti setTitle:str forState:UIControlStateNormal];
    [self.viewController dismissViewControllerAnimated:YES completion:nil];

}
@end
