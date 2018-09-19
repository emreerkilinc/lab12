//
//  DeliveryService.m
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@interface DeliveryService ()

@property (nonatomic) NSMutableArray *pizzaDescriptions;
@property (nonatomic) DeliveryCar *car;

@end

@implementation DeliveryService

- (instancetype)init {
    self = [super init];
    if (self) {
        _car = [DeliveryCar new];
        _pizzaDescriptions = [NSMutableArray new];
    }
    
    return self;
}

- (void)deliverPizza:(Pizza *)pizza {
    [self.pizzaDescriptions addObject: pizza.description];
    [self.car deliverPizza:pizza];
}

- (NSArray *)pizzaHistory {
    return self.pizzaDescriptions;
}


@end
