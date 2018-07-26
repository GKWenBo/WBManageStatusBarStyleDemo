//
//  ViewController.m
//  WBManageStatusBarStyleDemo
//
//  Created by 文波 on 2018/7/26.
//  Copyright © 2018年 文波. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "UINavigationController+WBStatusBarStyle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.wb_statusBarStyle = UIStatusBarStyleDefault;
    
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"change" style:UIBarButtonItemStylePlain target:self action:@selector(changeAction)];
}

// MARK:设置状态栏
//- (UIStatusBarStyle)preferredStatusBarStyle {
//    return UIStatusBarStyleLightContent;
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// MARK:Event Response
- (void)changeAction {
    static BOOL change;
    change = !change;
    if (change) {
        self.wb_statusBarStyle = UIStatusBarStyleLightContent;
    }else {
        self.wb_statusBarStyle = UIStatusBarStyleDefault;
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NextViewController *vc = [NextViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
