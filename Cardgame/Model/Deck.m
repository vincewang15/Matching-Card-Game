//
//  Deck.m
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import "Deck.h"
@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

-(NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addcard:(Card *)card
{
    [self addcard:card atTop:NO];
}

-(void)addcard:(Card *)card atTop:(BOOL)attop
{
    if(attop){
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}

-(Card *)drawcard
{
    Card * retcard=nil;
    if ([self.cards count]) {
    unsigned r=arc4random()%[self.cards count];
    retcard=self.cards[r];
    [self.cards removeObjectAtIndex:r];
    }
    return retcard;
}
@end
