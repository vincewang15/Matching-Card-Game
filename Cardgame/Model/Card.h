//
//  Card.h
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong,nonatomic) NSString* content;
@property(nonatomic,getter=isChosen) BOOL chosen;
@property(nonatomic,getter=isMatched) BOOL matched;

-(int) match:(NSArray *) othercards;
-(void) changechosen:(BOOL)b;
-(void) makematched;
@end
