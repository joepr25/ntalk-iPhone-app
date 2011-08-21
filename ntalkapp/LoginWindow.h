//
//  LoginWindow.h
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/20/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginWindowDelegate

-(void) login;

@end

@interface LoginWindow : UIViewController <UITextFieldDelegate>{
    
    IBOutlet UITextField *user;
    IBOutlet UITextField *password;
}

@property (nonatomic, assign) id <LoginWindowDelegate> delegate;

-(IBAction) submit;

@end
