#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray *resultArray = [[NSMutableArray alloc] initWithArray:rankedArray];
    NSString *rank = 0;
    NSMutableArray *rankArray = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < playerArray.count; i++) {
        
        for (NSUInteger j = 0; j < rankedArray.count; j++) {
            
            if ([playerArray[i] intValue] >= [rankedArray[j] intValue]) {
                
                [resultArray insertObject:[playerArray objectAtIndex:i] atIndex:j];
                
                for (NSUInteger n = 0; n < resultArray.count - 1; n++) {
                    
                    if ([resultArray objectAtIndex:n] > [resultArray objectAtIndex:n+1]) {
                        
                    }
                }
            }
        }
    }
    
    

//    for (NSUInteger i = 0; i < playerArray.count; i++) {
//
//        for (NSUInteger j = 0; j < rankedArray.count; j++) {
//
//            if ([playerArray[i] intValue] >= [rankedArray[j] intValue]) {
//
//                [resultArray insertObject:[playerArray objectAtIndex:i] atIndex:j];
//                NSLog(@"result arr 1 = %@", resultArray);
//
//                for (NSUInteger n = 0; n < resultArray.count - 1; n++) {
//                    if ([resultArray objectAtIndex:n] > [resultArray objectAtIndex:n+1]) {
//
////                        [rankArray addObject:(rank)];
//                    }
//                    else {
//
//                    }
//                }
//
//                //return resultArray;
//            }
//
//            else {
//                [resultArray addObject:[playerArray objectAtIndex:i]];
//                NSLog(@"result arr 2 = %@", resultArray);
//                //return resultArray;
//            }
//        }
//
//    }
//
//    NSArray *temArr = @[@[@1, @2], @[@3, @4]];
//    NSLog(@"tesssssst %@", temArr);
//
////    for (NSUInteger i = 0; i <= playerArray.count - 1; i++) {
////        for (NSUInteger j = 0; j <= rankedArray.count - 1; j++) {
////
////            if ([playerArray[i] intValue] >= [rankedArray[j] intValue]) {
////                [resultArr insertObject:[playerArray objectAtIndex:i] atIndex:i];
////
////                NSLog(@"result arr 1 = %@", resultArr);
////                return resultArr;
////            }
////
////            else if ([playerArray[i] intValue] < [rankedArray[j] intValue]) {
////                [resultArr addObject:rankedArray[j]];
////            }
////        }
////    }
////    NSLog(@"result arr 2 = %@", resultArr);
////    return resultArr;
    return @[];
//
}

@end
