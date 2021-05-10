//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    
    NSInteger countOfOddNumbers = 0;
    
    for (NSNumber *obj in array) {
        if (!(obj.intValue % 2 == 0)) {
            NSLog(@"odd number = %i", obj.intValue);
            countOfOddNumbers ++;
        }
    }
    NSLog(@"Count of odd numbers = %li", countOfOddNumbers);
    return countOfOddNumbers;
}
@end
