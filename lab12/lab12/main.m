//
//  main.m
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Manager1.h"
#import "Manager.h"
#import "Collector.h"


int main(int argc, const char * argv[])

{
    
    @autoreleasepool {
        
        Collector *inputCollector = [Collector new];
        NSString *userSelectedManager = [inputCollector inputPrompt:@"Emre\n>"];
        Kitchen *kitchen = [Kitchen new];
        Manager1 *badManager = [Manager1 new];
        Manager1 *Manager = [Manager1 new];
        badManager.name = @"sam";
        Manager.name = @"emre";
        id delegatedManager;
        
        if ([[userSelectedManager lowercaseString] isEqualToString:@"no one"]) {
        }
        
        else if ([[userSelectedManager lowercaseString] isEqualToString:@"sam"]) {
            delegatedManager = Manager;
        }
        else if ([[userSelectedManager lowercaseString] isEqualToString:@"alex"]) {
            delegatedManager = badManager;
        }
        else if ([[userSelectedManager lowercaseString] isEqualToString:@"randomly"]) {
            
            id delegatedManager;
            if (arc4random_uniform(2)==0){
                delegatedManager = badManager;
            }
            else {
                delegatedManager = Manager;
            }
            
            kitchen.delegate = delegatedManager;
        }
        
        NSLog(@"Your Manager Today is %@", Manager.name);
        NSLog(@"Please choose your pizza sizes and toppings:");
        
        while (TRUE) {
            
            
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            
            
            
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSMutableArray *components = [[inputString componentsSeparatedByString:@" "] mutableCopy];
            NSString *size = components[0];
            
            [Pizza convertStringToEnum:size];
            
            [components removeObjectAtIndex:0];
            
            NSLog(@"ordered pizza%@", inputString);
            NSString *parsed = [[NSString alloc] init];
            for (NSString *s in components) {
                
                parsed = [[parsed stringByAppendingString:s] stringByAppendingString:@" "] ;
            }
            
            parsed = [parsed stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            
            
            NSArray *toppings = [parsed componentsSeparatedByString:@","];
            
            NSLog(@"Size Ordered: %@", size);
            NSLog(@"Toppings Ordered: %@", toppings);
            
            PizzaSize pizzaSize = [Pizza convertStringToEnum:size];
            
            Pizza *newOrder = [kitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
            NSLog(@"%@", newOrder);
        }
        
    }
    return 0;
}
