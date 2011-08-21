//
//  Prefferences.h
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/18/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Creditos.h"
@class Prefferences;

@protocol PrefferencesDelegate

-(void) userLoggedOut;

@end

@interface Prefferences : UIViewController <UITextViewDelegate>{
    
    IBOutlet UITextView *mensaje;
    id <PrefferencesDelegate> delegate;
}

@property (nonatomic, assign) id <PrefferencesDelegate> delegate;

-(IBAction)passwordChangePressed;
-(IBAction)alertsHistoryPressed;
-(IBAction)creditsPressed; 
-(void) logOut;

@end
