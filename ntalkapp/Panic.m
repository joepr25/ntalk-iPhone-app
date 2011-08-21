//
//  Panic.m
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/18/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import "Panic.h"

@implementation Panic

@synthesize photo, text, boton1, enviarAlerta;

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
    [super viewDidLoad];
    [self.navigationController.navigationBar setTintColor:[UIColor clearColor]];
    photo.hidden = YES;
    text.hidden = NO;
    boton1.hidden = YES;
    enviarAlerta.hidden = NO;
    text.text = @"Pulsa el botón para enviar una Alerta";
    timeLeft = 5;
    //[self startTimer];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction) reseteaLaAlerta {
    
    if(timer.isValid)
        [timer invalidate];
    timer = nil;
    photo.hidden = YES;
    text.hidden = NO;
    boton1.hidden = YES;
    enviarAlerta.hidden = NO;
    text.center = CGPointMake(160, 130);
    text.text = @"Pulsa el botón para enviar una Alerta";
    timeLeft = 5;
    
}


-(void) releaseOutlets {
    
    self.photo = nil;
    self.text = nil;
    self.boton1 = nil;
    
}

-(void) startTimer {
    
    photo.image = [UIImage imageNamed:@"alert.png"];
    text.center = CGPointMake(160, 190);
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(sendAlert) userInfo:nil repeats:YES];
}

-(IBAction)buttonPressed:(UIButton *)sender {
    
    enviarAlerta.hidden = YES;
    boton1.hidden = NO;
    photo.hidden = NO;
    timeLeft = 5;
    text.text = @"Enviando alerta en 5 segundos";
    [self startTimer];
}

-(void) alertSent {

    photo.image = [UIImage imageNamed:@"success.png"];
    text.text = @"Alerta Enviada Satisfactoriamente";
    boton1.hidden = YES;
    timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(reseteaLaAlerta) userInfo:nil repeats:NO];
}

-(void) sendAlert {
    
    if(timeLeft != 0)
    {
        timeLeft -= 1;
        if(timeLeft != 1)
            text.text = [NSString stringWithFormat:@"Enviando alerta en %d segundos", timeLeft];
        else
            text.text = [NSString stringWithFormat:@"Enviando alerta en %d segundo", timeLeft]; 
    }
    else
    {
        [timer invalidate];
        timer = nil;
        [self alertSent];        
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [self releaseOutlets];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
