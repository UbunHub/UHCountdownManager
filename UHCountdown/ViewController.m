//
//  ViewController.m
//  UHCountdown
//
//  Created by xiaoqy on 16/9/7.
//  Copyright © 2016年 com.sanweidu.TDDPayBLE. All rights reserved.
//

#import "ViewController.h"
#import "UHCountdownManager.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString  *CellIdentifier = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
  
    cell.textLabel.text = [NSString stringWithFormat:@"点击倒计时%d",(int)indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    //这里做了倒计时工作
    [[UHCountdownManager defaultManager] scheduledCountDownWithKey:[NSString stringWithFormat:@"%d",(int)indexPath.row] timeInterval:60 countingDown:^(NSTimeInterval leftTimeInterval) {
        
        cell.textLabel.text = [NSString stringWithFormat:@"%@秒后重试", @(leftTimeInterval)];
        
    } finished:^(NSTimeInterval finalTimeInterval) {
        
        cell.textLabel.text = @"倒计时结束";
    }];
    
    
}

@end
