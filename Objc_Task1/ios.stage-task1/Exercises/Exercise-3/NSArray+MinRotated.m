#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    NSInteger count = [self count];
    
    if (count == 0) {
        return nil;
    }
    
    if (count == 1) {
        return [self objectAtIndex:0];
    }
    
    NSInteger left = 0;
    NSInteger right = count - 1;
    
    if ([[self objectAtIndex:right] intValue] > [[self objectAtIndex:0] intValue]) {
          return self[0];
        }
        
        // Binary search way
        while (right >= left) {
          // Find the mid element
           NSInteger mid = left + (right - left) / 2;

          // if the mid element is greater than its next element then mid+1 element is the smallest
          // This point would be the point of change. From higher to lower value.
          if ([[self objectAtIndex:mid] intValue] > [[self objectAtIndex:mid+1] intValue]) {
            return [self objectAtIndex:mid+1];
          }

          // if the mid element is lesser than its previous element then mid element is the smallest
          if ([[self objectAtIndex:mid-1] intValue]> [[self objectAtIndex:mid] intValue]) {
            return [self objectAtIndex:mid];
          }

          // if the mid elements value is greater than the 0th element this means
          // the least value is still somewhere to the right as we are still dealing with elements
          // greater than nums[0]
          if ([[self objectAtIndex:mid] intValue] > [[self objectAtIndex:0] intValue]) {
            left = mid + 1;
          } else {
            // if nums[0] is greater than the mid value then this means the smallest value is somewhere to
            // the left
            right = mid - 1;
          }
        }
        return [self objectAtIndex:left];
    
}

@end
