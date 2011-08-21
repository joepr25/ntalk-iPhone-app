//
//  WelcomeController.m
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/20/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import "WelcomeController.h"

@implementation WelcomeController

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
    [self.navigationController.navigationBar setTintColor:[UIColor clearColor]];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) yaTengoCuenta {
    
    LoginWindow *login = [[LoginWindow alloc] init];
    login.delegate = self;
    login.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ntalk.png"]];
    [self.navigationController pushViewController:login animated:YES];
}

-(void) crearCuenta {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                    message:@"This function is not yet available"
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

-(void) login {
    
    [self.delegate loginNow];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
