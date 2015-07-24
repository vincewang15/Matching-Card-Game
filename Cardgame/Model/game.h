//
//  game.h
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface game : NSObject

-(instancetype)init:(Deck *) deck;
-(void)chooseCard:(NSInteger) index;
-(Card *)cardatIndex:(NSInteger) index;

@property (nonatomic,readonly) int score;
@property (nonatomic,strong) NSMutableArray * cards;

@end
