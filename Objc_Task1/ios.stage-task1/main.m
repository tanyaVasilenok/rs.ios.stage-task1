#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "OddNumbers.h"
#import "NSString+ValidNumber.h"
#import "NSArray+MinRotated.h"
#import "NumberConverter.h"
#import "LeaderBoardTracker.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    
        //--------------------------Task 1--------------------------
        OddNumbers *numbers = [OddNumbers new];
        NSArray *arr = [[NSArray alloc] initWithObjects:@0, @-6, @-5, @2, nil];
        [numbers oddNumbers:(arr)];
        NSLog(@"arrrr %@", arr);
        
        //--------------------------Task 2--------------------------
        NSString *str = @"";
        [str isValidNumber];
        
        //--------------------------Task 3--------------------------
        NSMutableArray *mutableNumbers = [[NSMutableArray alloc] initWithArray:[arr sortedArrayUsingSelector:@selector(compare:)]];

        NSLog(@"array sorted %@", mutableNumbers);
        [mutableNumbers minRotated];
        
        //--------------------------Task 4--------------------------
        NumberConverter *num = [NumberConverter new];
        [num numberConverter:@-12345];
        
        //--------------------------Task 5--------------------------
        LeaderBoardTracker *leaderBoardTracker = [[LeaderBoardTracker alloc] init];
        [leaderBoardTracker trackLeaderBoard:@[@100, @90, @90, @80] playerArray:@[@70, @80, @105]];
        
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
