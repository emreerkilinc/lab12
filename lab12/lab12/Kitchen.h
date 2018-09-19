//
//  Kitchen.h
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Pizza.h"
#import "KitchenDelegaate.h"


@interface Kitchen : NSObject

@property (strong, nonatomic)NSString *size;

@property (nonatomic, weak) id <KitchenDelegate> delegate;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;





@end


