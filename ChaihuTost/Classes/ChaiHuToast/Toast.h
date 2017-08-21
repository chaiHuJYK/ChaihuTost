//
//  Toast.h
//  壹康复
//
//  Created by danggui on 16/4/19.
//  Copyright © 2016年 danggui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>  
#import <UIKit/UIKit.h>
#import "TGDrawSvgPathView.h"

#define DEFAULT_DISPLAY_DURATION 3.0f

@interface Toast : NSObject {
    NSString *text;
    UIButton *contentView;
    CGFloat  duration;
    UIActivityIndicatorView *activityIndicatorView;
    
}

@property (nonatomic, strong) TGDrawSvgPathView* tgView;
@property (nonatomic, assign) CFTimeInterval animationDuration;

+ (void)showWithText:(NSString *) text_;
+ (void)showWithText:(NSString *) text_
            duration:(CGFloat)duration_;

+ (void)showWithText:(NSString *) text_
           topOffset:(CGFloat) topOffset_;
+ (void)showWithText:(NSString *) text_
           topOffset:(CGFloat) topOffset
            duration:(CGFloat) duration_;

+ (void)showWithText:(NSString *) text_
        bottomOffset:(CGFloat) bottomOffset_;
+ (void)showWithText:(NSString *) text_
        bottomOffset:(CGFloat) bottomOffset_
            duration:(CGFloat) duration_;

+ (void)showActivity:(NSString *)text_;
+ (void)hiddenActivity;
@end
