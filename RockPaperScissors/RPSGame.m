//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Polina Dulko on 3/19/19.
//  Copyright © 2019 Polina Dulko. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*)firstTurn
                       secondTurn:(RPSTurn*)secondTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = firstTurn;
        _secondTurn = secondTurn;
    }
    
    return self;
}

-(RPSTurn*)winner {
    return [_firstTurn defeats:_secondTurn] ? _firstTurn : _secondTurn;
}

-(RPSTurn*)loser {
    return [_firstTurn defeats:_secondTurn] ? _secondTurn : _firstTurn;
}

@end
