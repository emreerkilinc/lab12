//
//  Manager1.m
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import "Manager1.h"

#import "Kitchen.h"

@implementation Manager1

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    for (NSString *archovies in toppings) {
        if ([[archovies lowercaseString] isEqualToString: @"archovies"] || [[archovies lowercaseString] isEqualToString: @"archovie"]) {
            return NO;
        }
        else return YES;
    }
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    
    return NO;
}
@end
