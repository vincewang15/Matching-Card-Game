//
//  playingcard.m
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import "playingcard.h"

@implementation playingcard

+(NSArray *)validnumber
{
    return @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8"];
}

- (NSString *)content
{
    return _number;
}

-(void)setNumber:(NSString *)number{
    if ([[playingcard validnumber] containsObject:number]) {
        _number = number;
    }
}

@end
