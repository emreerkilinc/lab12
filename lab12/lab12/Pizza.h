//
//  Pizza.h
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    small,
    medium,
    large,
};

@interface Pizza : NSObject
@property (nonatomic, assign)PizzaSize *size;

-(instancetype)initWithPizzaSize: (PizzaSize)pizzaSize toppings:(NSArray *)toppings;

+(PizzaSize)convertStringToEnum: (NSString *)pizzaSizeString;



@end


