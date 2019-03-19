//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Polina Dulko on 3/19/19.
//  Copyright © 2019 Polina Dulko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void)throwDown:(Move)playersMove;
-(NSString*)messageForTheGame;

@end

NS_ASSUME_NONNULL_END
