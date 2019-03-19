//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Polina Dulko on 3/19/19.
//  Copyright © 2019 Polina Dulko. All rights reserved.
//

#import "RPSController.h"

@implementation RPSController

-(void)throwDown:(Move)playersMove {
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    _game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                    secondTurn:computersTurn];
}

-(NSString*)resultString {
    return [_game.firstTurn defeats:_game.secondTurn] ? @"You win!" : @"You lose!";
}

-(NSString*)messageForTheGame {
    NSString *yourMoveString = [[NSString alloc] initWithFormat:@"Your move - %@", _game.firstTurn.description];
    NSString *opponentsMoveString = [[NSString alloc] initWithFormat:@"Opponent's move - %@", _game.secondTurn.description];
    if (_game.firstTurn.move == _game.secondTurn.move) {
        NSString *wholeString = [[NSString alloc] initWithFormat:@"\n%@\n%@\n%@", yourMoveString, opponentsMoveString, @"It's a tie!"];
        return wholeString;
    } else {
        NSString *yourMoveString = [[NSString alloc] initWithFormat:@"Your move - %@", _game.firstTurn.description];
        NSString *opponentsMoveString = [[NSString alloc] initWithFormat:@"Opponent's move - %@", _game.secondTurn.description];
        NSString *winnerString = [[_game winner] description];
        NSString *loserString = [[_game loser] description];
        NSString *resultString = [self resultString];
        NSString *wholeString = [[NSString alloc] initWithFormat:@"\n%@\n%@\n%@ defeats %@. %@", yourMoveString, opponentsMoveString, winnerString, loserString, resultString];
        return wholeString;
    }
}

@end
