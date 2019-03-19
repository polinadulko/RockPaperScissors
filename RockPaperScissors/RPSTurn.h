//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Polina Dulko on 3/19/19.
//  Copyright © 2019 Polina Dulko. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid,
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move)move;
-(BOOL)defeats:(RPSTurn*)opponent;
-(NSString*)description;

@end

NS_ASSUME_NONNULL_END
