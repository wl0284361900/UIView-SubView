//
//  ViewController.m
//  UIView-SubView
//
//  Created by winproluhao on 2020/10/30.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 100, 100)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    NSLog(@"self.view.subviews.count = %ld",self.view.subviews.count);
    
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(125, 125, 100, 100)];
    greenView.backgroundColor = [UIColor greenColor];
    //greenView視圖 添加在redView視圖之下 可以這樣實現
    [self.view insertSubview:greenView aboveSubview:redView];
    
    //----------------------------------------------------------------------------------------------------
    
    UIView *subView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 300, 100)];
    subView.backgroundColor = [UIColor redColor];
    
    UIView *subSubView = [[UIView alloc]initWithFrame:CGRectMake(10, 20, 100, 150)];
    subSubView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:subView]; //subviews[0]
    [self.view addSubview:subSubView];//subviews[1]
    
    //將子視圖往後挪
    [self.view sendSubviewToBack:subSubView];
    
    //將子試圖往前挪
    [self.view bringSubviewToFront:subSubView];
    
    [self.view.subviews[0] removeFromSuperview];
    
}


@end
