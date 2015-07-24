//
//  Card.m
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int) match:(NSArray *)othercards
{
    for(Card* card in othercards){
        if([card.content isEqualToString:self.content]){
            return 5;
        }
    }
    return -1;
}

-(void)changechosen:(BOOL) b
{
    self.chosen=b;
}

-(void)makematched
{
    self.matched=YES;
}

@end
