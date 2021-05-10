#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    NSString *inputedStr = number.stringValue;
    NSMutableArray *resultArr = [NSMutableArray new];
    
    if (inputedStr == nil) {
        return resultArr;
    }
    
    if ([inputedStr characterAtIndex:0] == '-') {
        for (long i = inputedStr.length - 1; i > 0; i--) {
            NSString *letter = [[NSString alloc] initWithFormat:@"%c", [inputedStr characterAtIndex:i]];
            [resultArr addObject:letter];
        }
    }

    else {
        for (long i = inputedStr.length - 1; i >= 0; i--) {
            NSString *letter = [[NSString alloc] initWithFormat:@"%c", [inputedStr characterAtIndex:i]];
            [resultArr addObject:letter];
        }
    }
    return resultArr;
}

@end
