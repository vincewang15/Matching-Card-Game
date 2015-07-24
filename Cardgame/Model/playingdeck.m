//
//  playingdeck.m
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import "playingdeck.h"
#import "playingcard.h"

@implementation playingdeck

- (instancetype)init
{
    self = [super init];
    if(self){
        for(int i=0;i<2;++i){
            for(NSString * number in [playingcard validnumber]){
                playingcard * card=[[playingcard alloc] init];
                card.number=number;
                [self addcard:(Card *)card];
            }
        }
    }
    return self;
}

@end
