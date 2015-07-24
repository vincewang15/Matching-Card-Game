//
//  ViewController.m
//  Cardgame
//
//  Created by Vincewang on 6/13/15.
//  Copyright (c) 2015 Vincewang. All rights reserved.
//

#import "ViewController.h"
#import "game.h"
#import "playingcard.h"
#import "playingdeck.h"

@interface ViewController ()
@property (strong,nonatomic) game* g;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;
@property (weak, nonatomic) IBOutlet UILabel *myscore;
@property (strong,nonatomic) Deck * deck;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(game *)g
{
    if(!_g){
        _g=[[game alloc]init:[self createdeck]];
    }
    return _g;
}

-(Deck *)createdeck
{
    return [[playingdeck alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)restart:(UIButton *)sender {
    _g=[[game alloc]init:[self createdeck]];
    [self updateUI];
}

- (IBAction)touchme:(UIButton *)sender {
    int index=(int)[self.buttons indexOfObjectIdenticalTo:sender];
    [self.g chooseCard:index];
    [self updateUI];
}



-(void) updateUI
{
    [_myscore setText:[NSString stringWithFormat:@"Score: %d",self.g.score]];
    for(UIButton *cardbutton in _buttons){
        int index=(int)[self.buttons indexOfObjectIdenticalTo:cardbutton];
        Card *card=[self.g cardatIndex:index];
        NSLog(card.isChosen? @"Yes" : @"No");
        if(!card.isChosen&&!card.isMatched){
            [_buttons[index] setBackgroundImage:[UIImage imageNamed:@"stanford-tree"] forState:UIControlStateNormal];
        }else{
            [_buttons[index] setBackgroundImage:[UIImage imageNamed:@"blank"] forState:UIControlStateNormal];
            [_buttons[index] setTitle:card.content forState:UIControlStateNormal];
        }
    }
}
@end
