//
//  ViewController.m
//  Mytest
//
//  Created by songge on 16/3/4.
//  Copyright © 2016年 占耀松. All rights reserved.
//

#import "ViewController.h"
#import "MPCoachMarks.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showTips];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Tutorial
-(void) showTips{
    
    CGRect coachmark1 = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 45);
    CGRect coachmark2 = CGRectMake(([UIScreen mainScreen].bounds.size.width - 300) / 2, coachmark1.origin.y + coachmark1.size.height+200+7, 300, 60);
    CGRect coachmark3 = CGRectMake(2, 20, 45, 45);
    
    CGRect coachmark4 = CGRectMake(0, [UIScreen mainScreen].bounds.size.height-64-60, [UIScreen mainScreen].bounds.size.width, 80);
    
    // 设置显示的方式
    NSArray *coachMarks = @[
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark1],
                                @"caption": @"搜索秦时明月主题",
//                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],方形／圆形
                                @"position":[NSNumber numberWithInteger:LABEL_POSITION_BOTTOM],
                                @"alignment":[NSNumber numberWithInteger:LABEL_ALIGNMENT_RIGHT],
                                @"showArrow":[NSNumber numberWithBool:YES],
                                },//是否有箭头
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark2],
                                @"caption": @"点击我这个按钮",
                                @"showArrow":[NSNumber numberWithBool:YES],
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark3],
                                @"caption": @"你也可以搜索这个",
                                @"shape": [NSNumber numberWithInteger:SHAPE_CIRCLE],
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark4],
                                @"caption": @"点击这个并没有任何效果",
                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],
                                }
                            ];
    
    MPCoachMarks *coachMarksView = [[MPCoachMarks alloc] initWithFrame:self.navigationController.view.bounds coachMarks:coachMarks];
    [self.navigationController.view addSubview:coachMarksView];
    [coachMarksView start];
    
}
@end
