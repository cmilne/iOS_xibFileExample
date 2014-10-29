//
//  ViewController.m
//  xibViewFileExample
//
//  Created by Chris Milne on 4/11/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    @property(nonatomic, strong) CustomView1 *customView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.customView = [[[NSBundle mainBundle] loadNibNamed:@"CustomView1" owner:self options:nil] objectAtIndex:0];
    [self.customView setFrame:CGRectMake(0, 100, self.customView.frame.size.width, self.customView.frame.size.height)];
    self.customView.delegate = self;
    [self.view addSubview:self.customView];
}

// Handing CustomView1 Delegate
-(void)buttonPressed:(int)index {
    if(0 == index) {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut
                         animations:(void (^)(void)) ^{
                             [self.customView setFrame:CGRectMake(0, 300, self.customView.frame.size.width, self.customView.frame.size.height)];
                         }
                         completion:^(BOOL finished){
                             [self.customView toggleImage];
                         }];
    }
    else {
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut
                         animations:(void (^)(void)) ^{
                             [self.customView setFrame:CGRectMake(0, 100, self.customView.frame.size.width, self.customView.frame.size.height)];
                         }
                         completion:^(BOOL finished){
                             [self.customView toggleImage];                             
                         }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
