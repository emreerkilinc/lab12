//
//  Kitchen.m
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings{
    if (self.delegate) {
        if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] && [self.delegate kitchenShouldUpgradeOrder:self]) {
            Pizza *newPizza = [[Pizza alloc] initWithPizzaSize:large toppings:toppings];
            NSLog(@"It is your own Pizza!");
            return newPizza;
        }
        else if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                Pizza *newPizza = [[Pizza alloc] initWithPizzaSize:size toppings:toppings];
                NSLog(@"Your Pizza!");
                return newPizza;
            }
            
            else {
                NSLog(@"Sorry!");
                return nil;
            }
        }
    }
    return ([Pizza new]);
    
}



@end
