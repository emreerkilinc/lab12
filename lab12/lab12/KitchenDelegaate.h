//
//  KitchenDelegaate.h
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Kitchen;

@protocol KitchenDelegate <NSObject>
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;


@optional
-(void)KitchenDidMakePizza:(Pizza *)pizza;






@end


