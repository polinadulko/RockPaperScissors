//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Polina Dulko on 3/19/19.
//  Copyright © 2019 Polina Dulko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn:(RPSTurn*)firstTurn
                      secondTurn:(RPSTurn*)secondTurn;
-(RPSTurn*)winner;
-(RPSTurn*)loser;

@end

NS_ASSUME_NONNULL_END
