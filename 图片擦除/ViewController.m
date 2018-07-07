//
//  ViewController.m
//  图片擦除
//
//  Created by 田宇 on 2018/7/7.
//  Copyright © 2018年 田宇. All rights reserved.
//

#import "ViewController.h"
#import "TYScratchView.h"

@interface ViewController ()<TYScratchViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    TYScratchView *scratchView = [[TYScratchView alloc]initWithCoverImage:[UIImage imageNamed:@"image1.png"] andRewardImage:[UIImage imageNamed:@"style.png"]];
    
    TYScratchView *scratchView = [[TYScratchView alloc]init];
    scratchView.coverImage = [UIImage imageNamed:@"image1.png"];
    scratchView.rewardImage = [UIImage imageNamed:@"style.png"];
    scratchView.scratchWidth = 20;
    scratchView.isAutoCleanAll = YES;
    
    scratchView.delegate = self;
    
    scratchView.frame = CGRectMake(10, 30, 300, 150);
    
    [self.view addSubview:scratchView];
}

-(void)TYScratchViewIsCleanAll:(TYScratchView *)scratchView{
    NSLog(@"Scratch End");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
