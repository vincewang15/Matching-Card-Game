//
//  Deck.h
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "card.h"

@interface Deck : NSObject

-(void)addcard:(Card *) card atTop:(BOOL)attop;
-(void)addcard:(Card *)card;

-(Card *)drawcard;

@end
