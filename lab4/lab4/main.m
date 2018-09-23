//
//  main.m
//  lab4
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactlist=[[ContactList alloc]init];
        
        while(true){
            
            NSString *menu= @"What would you like to do next?  new list?";
            NSString *option =[InputHandler getUserInputWithLength:20 withPrompt:menu];
            if([option isEqualToString:@"quit"]){
                break;
            }else if ([option isEqualToString:@"new"]){
                //1. get user input for name and email
                NSString *name=[InputHandler getUserInputWithLength:255 withPrompt:@"enter the name"];
                NSString *email=[InputHandler getUserInputWithLength:255 withPrompt:@"enter the email"];
                
                //2 create a contact object based on the user
                Contact *newContact = [[Contact alloc]initWithname:name andemail:email];
                
                // 3 add the contact to contactlist contactlist
                [contactlist addcontact:newContact];
                
                
            }else if ([option isEqualToString:@"list"]){
                NSLog(@"%@",contactlist);
            }
            
            
        }
    }
    return 0;
}
