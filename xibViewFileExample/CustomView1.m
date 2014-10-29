//
//  CustomeView1.m
//  xibViewFileExample
//
//  Created by Chris Milne on 4/11/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import "CustomView1.h"

@interface CustomView1()
{
    int index;
}
@end

@implementation CustomView1

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        index = 0;
    }
    return self;
}

-(void)toggleImage {
    if(0 == index) {
        self.imageView.image = [UIImage imageNamed:@"FillMurry130_150.jpeg"];
        index = 1;
    }
    else {
        self.imageView.image = [UIImage imageNamed:@"StevenSegallery130_150.jpeg"];
        index = 0;
    }
}

-(IBAction)fCustomView1ButtonPushed:(id)sender {
    NSLog(@"Button Pushed");
    [self.delegate buttonPressed:index];
}

@end
