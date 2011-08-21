//
//  LoginWindow.m
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/20/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import "LoginWindow.h"

@implementation LoginWindow
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    user.delegate = self;
    password.delegate = self;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction) submit {
    
    [self.delegate login];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
