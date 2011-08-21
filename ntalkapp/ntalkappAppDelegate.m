//
//  ntalkappAppDelegate.m
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/18/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//



#import "ntalkappAppDelegate.h"



@implementation ntalkappAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /* ----------------------------------- Creación de panel de usuario ---------------------------------*/
    
    UIImageView *ntalk = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ntalk.png"]];
    UIImageView *ntalk1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ntalk.png"]];
    UIImageView *ntalk2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ntalk.png"]];

    
    NSMutableArray *viewControllers = [[NSMutableArray alloc] initWithCapacity:5];
    Contacts *cont = [[Contacts alloc] init];
    cont.navigationItem.titleView = ntalk1;
    cont.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:cont action:@selector(addContact)];
    UINavigationController *navcontacts = [[[UINavigationController alloc] initWithRootViewController:cont] autorelease];
    navcontacts.tabBarItem.title = @"Contactos";
    navcontacts.tabBarItem.image = [UIImage imageNamed:@"contactstabbar.png"];
    [viewControllers addObject:navcontacts];
    
    Panic *pan = [[Panic alloc] init];
    pan.navigationItem.titleView = ntalk2;
    UINavigationController *navpanico = [[[UINavigationController alloc] initWithRootViewController:pan] autorelease];
    navpanico.tabBarItem.title = @"Panico";
    navpanico.tabBarItem.image = [UIImage imageNamed:@"panictabbar.png"];
    [viewControllers addObject:navpanico];
    
    Prefferences *pref = [[Prefferences alloc] init];
    pref.delegate = self;
    pref.navigationItem.titleView = ntalk;
    UINavigationController *navpref = [[[UINavigationController alloc] initWithRootViewController:pref] autorelease];
    navpref.tabBarItem.title = @"Preferencias";
    navpref.tabBarItem.image = [UIImage imageNamed:@"prefbaricon.png"];
    [viewControllers addObject:navpref];
    
    tabbar = [[UITabBarController alloc] init];
    [tabbar setViewControllers:viewControllers];
    tabbar.view.frame = [[UIScreen mainScreen] applicationFrame];
    
    /* ----------------------------------- Creación de Log in window ---------------------------------*/
    
    WelcomeController *wc = [[WelcomeController alloc] init];
    wc.delegate = self;
    wc.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ntalk.png"]];
    login = [[UINavigationController alloc] initWithRootViewController:wc];
    
    
    [self.window addSubview:login.view];
    
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void) userLoggedOut {
    
    [tabbar.view removeFromSuperview];
    [self.window addSubview:login.view];
}

-(void) loginNow {
    
    [login.view removeFromSuperview];
    [self.window addSubview:tabbar.view];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end


