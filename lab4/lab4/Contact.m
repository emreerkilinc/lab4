//
//  Contact.m
//  lab4
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//
#import "Contact.h"

@implementation Contact

-(instancetype)initWithname:(NSString*)name andemail:(NSString*)email
{
    self=[super init];
    if(self){
        _name = name;
        _email = email;
    }
    return self;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@>(%@)",self.name,self.email];
    
}@end
