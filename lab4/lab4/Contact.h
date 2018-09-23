//
//  Contact.h
//  lab4
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *email;
-(instancetype)initWithname:(NSString*)name andemail:(NSString*)email;

@end
