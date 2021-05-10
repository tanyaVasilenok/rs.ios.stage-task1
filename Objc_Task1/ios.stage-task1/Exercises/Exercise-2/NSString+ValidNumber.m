#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    NSUInteger strLength = [self length];
    
    if ([self isEqualToString:@""]) {
        NSLog(@"false");
        return false;
    }

    for (int i = 0; i < strLength; i++) {
        NSLog(@"%c", [self characterAtIndex:i]);
        
        if (!(isdigit([self characterAtIndex:i]))) {

            NSLog(@"false");
            return false;
        }
    }
    NSLog(@"true");
    return true;
}
@end
