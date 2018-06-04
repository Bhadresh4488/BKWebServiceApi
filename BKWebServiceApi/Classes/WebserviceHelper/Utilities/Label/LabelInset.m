//
//  LabelInset.m
//  Rainbow
//
//  Created by ind356 on 21/06/14.
//  Copyright (c) 2014 Vodlo. All rights reserved.
//

#import "LabelInset.h"

@implementation LabelInset

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawTextInRect:(CGRect)rect
{
    UIEdgeInsets insets = {0, 5, 0, 5};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

@end
