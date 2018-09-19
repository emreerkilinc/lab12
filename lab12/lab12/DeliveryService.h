//
//  DeliveryService.h
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"



@interface DeliveryService : NSObject

- (void)deliverPizza:(Pizza *)pizza;
- (NSArray *)pizzaHistory;
@end


