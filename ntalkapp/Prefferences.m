//
//  Prefferences.m
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/18/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import "Prefferences.h"

@implementation Prefferences

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
    UIBarButtonItem *logOut = [[UIBarButtonItem alloc] initWithTitle:@"Log Out" style:UIBarButtonItemStyleDone target:self action:@selector(logOut)];
    self.navigationItem.rightBarButtonItem = logOut;
    [super viewDidLoad];
    [self.navigationController.navigationBar setTintColor:[UIColor clearColor]];
    // Do any additional setup after loading the view from its nib.
    mensaje.delegate = self;
    NSString *str = [[NSUserDefaults standardUserDefaults] stringForKey:@"textoDelMensaje"];
    if(str) 
        mensaje.text = str;
    
    
}

-(void) logOut {
    
    [self.delegate userLoggedOut];
}


-(IBAction)creditsPressed {
    
    Creditos *credits = [[Creditos alloc] init];
    credits.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ntalk.png"]];
    [self.navigationController pushViewController:credits animated:YES];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range  replacementText:(NSString *)text
{
	if (range.length==0) {
		if ([text isEqualToString:@"\n"]) {
            [[NSUserDefaults standardUserDefaults] setObject:mensaje.text forKey:@"textoDelMensaje"];
			[textView resignFirstResponder];
			return NO;
		}
	}

	
    return YES;
}


-(IBAction)passwordChangePressed {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                    message:@"This function is not yet available"
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

-(IBAction)alertsHistoryPressed {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                    message:@"This function is not yet available"
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
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
