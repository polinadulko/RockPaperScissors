//
//  main.m
//  RockPaperScissors
//
//  Created by Polina Dulko on 3/19/19.
//  Copyright © 2019 Polina Dulko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RPSController* gameController = [[RPSController alloc]init];
        [gameController throwDown:Paper];
        NSString* resultMessage = [gameController messageForTheGame];
        NSLog(@"%@", resultMessage);
    }
    return 0;
}
