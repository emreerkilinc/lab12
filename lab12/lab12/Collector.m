//
//  Collector.m
//  lab12
//
//  Created by emre on 2018-09-18.
//  Copyright © 2018 emre. All rights reserved.
//

#import "Collector.h"

@implementation Collector

-(NSString *)inputPrompt:(NSString *)prompt {
    NSLog(@"%@",prompt);
    char inputChar[100];
    
    fgets(inputChar, 100, stdin);
    NSString *input = [NSString stringWithUTF8String:inputChar];
    
    return input;
}



@end
