//
//  Animation.m
//  Lesson 8
//
//  Created by Ivan Babich on 02.05.15.
//
//

#import "Animation.h"

@implementation Animation

+(void) change_CheckBox:(UIView *) view Color:(UIColor *) color {
    
    CATransition * animation = [CATransition animation];
    animation.type = kCATransitionFade;                     // Тип анимации
    animation.duration = 0.35;                              // Время работы анимации
    [view.layer addAnimation:animation forKey:@"Fade"];
    view.backgroundColor = color;
    
}

@end
