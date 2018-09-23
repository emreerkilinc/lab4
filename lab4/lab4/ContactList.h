//
//  ContactList.h
//  lab4
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject
@property(nonatomic,strong) NSMutableArray *contactList;

-(void)addcontact : (Contact *)newcontact;

@end
