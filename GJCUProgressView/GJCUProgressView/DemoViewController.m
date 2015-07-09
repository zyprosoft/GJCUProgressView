//
//  DemoViewController.m
//  GJCUProgressView
//
//  Created by ZYVincent on 15/7/9.
//  Copyright (c) 2015年 ZYProSoft. All rights reserved.
//

#import "DemoViewController.h"
#import "GJCUProgressView.h"
#import "GJCFUitils.h"

@interface DemoViewController ()

@property (nonatomic,strong)GJCUProgressView *test;

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.test = [[GJCUProgressView alloc]init];
    self.test.gjcf_size = CGSizeMake(100, 100);
    self.test.tintColor = [UIColor blueColor];
    
    [self.view addSubview:self.test];
    self.test.center = self.view.center;
    
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateProgress:) userInfo:nil repeats:YES];
}

- (void)updateProgress:(NSTimer *)timer
{
    if (self.test.progress >= 1.f) {

        [timer invalidate];
        
        [self.test dismiss];
        
        return;
    }
    
    self.test.progress = self.test.progress + 0.05;
}

@end
