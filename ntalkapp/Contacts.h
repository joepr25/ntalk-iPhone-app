//
//  Contacts.h
//  ntalkapp
//
//  Created by Jose Rodrigo PEREZ RODRIGUEZ on 8/18/11.
//  Copyright 2011 Itesm Campus Puebla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Contacts : UIViewController <UITableViewDataSource>{
    
    IBOutlet UITableView *tv;
}

-(void) addContact;

@end
