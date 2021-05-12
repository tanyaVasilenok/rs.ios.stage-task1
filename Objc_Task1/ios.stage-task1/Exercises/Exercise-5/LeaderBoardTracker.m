#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray *ratingsArray = [NSMutableArray new];
    
    for (int i = 0; i < playerArray.count; i++) {
        
        int rank = 1;
        int tempNum = -1;
        
        for (int j = 0; j < rankedArray.count; j++) {
            
            if ([playerArray[i] intValue] >= [rankedArray[j] intValue]) {
                break;
                }
            
            if (tempNum != [rankedArray[j] intValue]) {
                rank += 1;
            }
            
            tempNum = [rankedArray[j] intValue];
        }
        [ratingsArray addObject:@(rank)];
    }
    return ratingsArray;
}

@end
