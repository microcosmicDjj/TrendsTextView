//
//  TrendsTextView.m
//  TrendsTextView
//
//  Created by Mac on 15/10/9.
//  Copyright © 2015年 djj. All rights reserved.
//

#import "TrendsTextView.h"

@interface TrendsTextView () <UITextViewDelegate>

@property (nonatomic) BOOL isUpward;
@property (nonatomic) BOOL isDown;

@end

@implementation TrendsTextView

+ (instancetype) getTrendsTextView
{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.delegate = self;
        _isDown = YES; // 默认向下
        _isUpward = NO;
    }
    return self;
}

#define mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    [self changeSelfSizeWithStringSize:textView.contentSize];
    return YES;
}

- (void) changeSelfSizeWithStringSize:(CGSize) size
{
    if (_isDown) {
        self.frame = CGRectMake(self.x, self.y,self.width,size.height);
    }
    if (_isUpward) {
        CGFloat y = (self.y + self.height) - size.height;
        self.frame = CGRectMake(self.x, y, self.width, size.height);
    }

}

- (void) upward
{
    _isDown = NO;
    _isUpward = YES;
}

-(void) down
{
    _isDown = YES;
    _isUpward = NO;
}

#define mark - getFrame
- (CGFloat) x
{
    return self.frame.origin.x;
}
- (CGFloat) y
{
    return self.frame.origin.y;
}

- (CGFloat) width
{
    return self.frame.size.width;
}
- (CGFloat) height
{
    return self.frame.size.height;
}

@end
