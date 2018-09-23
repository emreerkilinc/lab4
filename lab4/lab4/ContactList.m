//
//  ContactList.m
//  lab4
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//
#import "ContactList.h"

@implementation ContactList
-(instancetype)init{
    self =[super init];
    if(self){
        _contactList=[NSMutableArray new];
        
    }
    return self;
}

-(void)addcontact : (Contact *)newcontact{
    [_contactList addObject: newcontact];
}

-(NSString *)description
{
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    for (Contact *contact in _contactList){
        NSString *contactStr = [NSString stringWithFormat:@"@%d:%@/n",count, contact];
        //NSLog(@"%d: %@",count, contact);
        count++;
        [result appendString:contactStr];
    }
    return result;
}


@end
