//
//  InputHandler.m
//  lab4
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//
#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    const char *cstring = fgets(inputChars, maxLength, stdin);
    NSString *result = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
    //    return [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSCharacterSet *whitespaceAndNewline = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [result stringByTrimmingCharactersInSet:whitespaceAndNewline];
}

@end
