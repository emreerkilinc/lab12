//
//  Manager1.h
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegaate.h"


@interface Manager1 : NSObject <KitchenDelegate>
@property (nonatomic, strong)NSString *name;



@end


