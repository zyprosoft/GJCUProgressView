//
//  GJGCProgressView.h
//  GJGroupChat
//
//  Created by ZYVincent on 15/7/1.
//  Copyright (c) 2015年 ganji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GJCUProgressView : UIView

@property (nonatomic,strong)UIColor *tintColor;

@property (nonatomic,assign)CGFloat progress;

- (void)dismiss;

@end
