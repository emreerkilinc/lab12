//
//  Pizza.m
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import "Pizza.h"

@interface Pizza ()

@property (nonatomic, assign) PizzaSize pizzaSize;
@property (nonatomic, strong) NSArray *toppings;

@end


@implementation Pizza

-(instancetype)initWithPizzaSize:(PizzaSize)pizzaSize toppings:(NSArray *)toppings {
    self = [super init];
    if (self) {
        _size = &pizzaSize;
        _toppings = toppings;
    }
    return self;
}


-(NSArray *)pizzaTopping {
    return self.toppings;
}

+(PizzaSize)convertStringToEnum: (NSString *)pizzaSizeString {
    
    if ([[pizzaSizeString lowercaseString] isEqualToString:@"small" ]) {
        return small;
    }
    if ([[pizzaSizeString lowercaseString] isEqualToString:@"medium"]) {
        return medium;
    }
    if ([[pizzaSizeString lowercaseString] isEqualToString:@"large" ]) {
        return large;
    }
    else {
        NSLog(@"we do not know your pizza");
    }
    return medium;
}


@end
