//
//  Panic.h
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/18/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Panic : UIViewController {
    
    IBOutlet UIImageView *photo;
    IBOutlet UILabel *text;
    IBOutlet UIButton *boton1;
    IBOutlet UIButton *enviarAlerta;
    NSTimer *timer;
    int timeLeft;
}

@property (retain) IBOutlet UIImageView *photo;
@property (retain) IBOutlet UILabel *text;
@property (retain) IBOutlet UIButton *boton1;
@property (retain) IBOutlet UIButton *enviarAlerta;

-(void) releaseOutlets;
-(void) startTimer;
-(void) alertSent;
-(void) sendAlert;
-(IBAction)buttonPressed:(UIButton *)sender;
-(IBAction) reseteaLaAlerta;

@end
