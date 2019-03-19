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

#if __has_feature(objc_arc)
#define DLog(format, ...) CFShow((__bridge CFStringRef)[NSString stringWithFormat:format, ## __VA_ARGS__]);
#else
#define DLog(format, ...) CFShow([NSString stringWithFormat:format, ## __VA_ARGS__]);
#endif

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DLog(@"Choose a move:\n1.Rock\n2.Paper\n3.Scissors\n");
        while (true) {
            NSFileHandle *inputFileHandle = [NSFileHandle fileHandleWithStandardInput];
            NSData *inputData = [NSData dataWithData:[inputFileHandle availableData]];
            NSString *inputString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            Move move = Invalid;
            if([inputString isEqual: @"1"]) {
                move = Rock;
            } else if([inputString isEqual: @"2"]) {
                move = Paper;
            } else if([inputString isEqual: @"3"]) {
                move = Scissors;
            }
            if(move == Invalid) {
                DLog(@"Wrong input!");
            } else {
                RPSController* gameController = [[RPSController alloc]init];
                [gameController throwDown: move];
                NSString* resultMessage = [gameController messageForTheGame];
                DLog(@"%@", resultMessage);
                return 0;
            }
        }
    }
}
