//
//  CustomeView1.h
//  xibViewFileExample
//
//  Created by Chris Milne on 4/11/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomView1Delegate.h"

@interface CustomView1 : UIView

@property (nonatomic, weak) id <CustomView1Delegate> delegate;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

-(void)toggleImage;
-(IBAction)fCustomView1ButtonPushed:(id)sender;

@end
