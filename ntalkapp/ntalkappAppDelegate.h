//
//  ntalkappAppDelegate.h
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/18/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contacts.h"
#import "Panic.h"
#import "Prefferences.h"
#import "WelcomeController.h"

@interface ntalkappAppDelegate : NSObject <UIApplicationDelegate, PrefferencesDelegate, WelcomeControllerDelegate> {
    
    UINavigationController *login;
    UITabBarController *tabbar;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
