//
//  YKLabel.m
//
//
//  Created by youki on 16/1/14.
//  Copyright © 2016年 youki. All rights reserved.
//

#import "YKLabel.h"

@implementation YKLabel

- (void)setVerticalAlignment:(YKLabelVerticalAlignmentModel)verticalAlignment{
    _verticalAlignment = verticalAlignment;
    [self setNeedsDisplay];
}

- (instancetype)initWithFrame:(CGRect)frame{//designinit方法
    if (self = [super initWithFrame:frame]) {
        self.verticalAlignment = YKLabelVerticalAlignmentModelMiddle;
    }
    return self;
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines{
    
    CGRect currentTextRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.verticalAlignment) {
        case YKLabelVerticalAlignmentModelTop:{
            currentTextRect.origin.y = bounds.origin.y;
             break;
            
        }
        case YKLabelVerticalAlignmentModelMiddle:{
            currentTextRect.origin.y = bounds.origin.y + (bounds.size.height - currentTextRect.size.height)/2.0;
            break;
        }
        case YKLabelVerticalAlignmentModelBottom:{
            currentTextRect.origin.y = bounds.origin.y+bounds.size.height - currentTextRect.size.height;
            break;
        }
        default:
            break;
    }
    return currentTextRect;
}

- (void)drawTextInRect:(CGRect)rect{//布局的时候会调用此方法
    CGRect newTextRect = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:newTextRect];
    
}


@end
