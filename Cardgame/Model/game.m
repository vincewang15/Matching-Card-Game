//
//  game.m
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import "game.h"

@interface game()
@property (nonatomic,readwrite) int score;
@end

@implementation game

-(NSMutableArray *)cards
{
    if(!_cards){
        _cards=[[NSMutableArray alloc]init];
    }
    return _cards;
}
-(instancetype)init:(Deck *)deck
{
    self=[super init];
    if(self){
        for(int i=0;i<16;++i){
            Card * card=[deck drawcard];
            [self.cards addObject:card];
        }
    }
    return self;
}
-(Card *)cardatIndex:(NSInteger)index
{
    return (index<16)?self.cards[index]:nil;
}
-(void)chooseCard:(NSInteger)index
{
    Card * card=[self cardatIndex:index];
    if(!card.isMatched)
        if(!card.isChosen){
            for(int i=0;i<16;++i){
                Card * othercard=self.cards[i];
                if(!othercard.isMatched&&othercard.isChosen){
                    int matchscore=[othercard match:@[card]];
                    self.score+=matchscore;
                    [self.cards[i] changechosen:NO];
                    [self.cards[index] changechosen:YES];
                    if(matchscore==5){
                        [self.cards[i] makematched];
                        [self.cards[index] makematched];
                    }
                    return;
                }
            }
    }
    [self.cards[index] changechosen:YES];
}

@end
