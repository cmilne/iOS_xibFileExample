//
//  CustomView1Delegate.h
//  xibViewFileExample
//
//  Created by Chris Milne on 4/11/14.
//  Copyright (c) 2014 ideo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CustomView1Delegate <NSObject>
    -(void)buttonPressed:(int)index;
@end
