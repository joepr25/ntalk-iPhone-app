//
//  WelcomeController.h
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/20/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginWindow.h"

@protocol WelcomeControllerDelegate

-(void) loginNow;

@end

@interface WelcomeController : UIViewController <LoginWindowDelegate>{
    
    
}

@property (nonatomic, assign) id <WelcomeControllerDelegate> delegate;

-(IBAction)yaTengoCuenta;
-(IBAction)crearCuenta;

@end
