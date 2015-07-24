//
//  playingcard.h
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface playingcard : Card

@property (nonatomic,strong) NSString * number;

+(NSArray *)validnumber;
- (NSString *)content;

@end
