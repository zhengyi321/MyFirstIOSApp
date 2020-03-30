//
//  SecondViewController.m
//  MyFirstApp
//
//  Created by 杨涵 on 2020/3/28.
//  Copyright © 2020 yang. All rights reserved.
//

#import "SecondViewController.h"
#import "Header.h"
@interface SecondViewController ()


@property (nonatomic,strong)UIButton *currentButton;
@property (nonatomic,strong)UIView *huakuaiView;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createButton];
}

-(void)createButton{
    NSArray *buttonName=@[@"洋酒",@"啤酒",@"黄酒"];
    for (NSInteger i=0; i<buttonName.count; i++) {
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];//必须为UIBUttonTypeCustom 否则会现实蓝屏图片
        
        
        
        button.frame=CGRectMake(Width/buttonName.count*i, Height-104, Width/buttonName.count, 54) ;
        [button setImage:[UIImage imageNamed:@"定位"] forState:UIControlStateNormal];
       
        [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        button.tag=i+1;
        [button setTitle:buttonName[i] forState:UIControlStateNormal];
        
        button.imageEdgeInsets = UIEdgeInsetsMake(-(button.frame.size.height - button.titleLabel.frame.size.height - button.titleLabel.frame.origin.y),
                                                  13, 10, 0);
        button.titleEdgeInsets = UIEdgeInsetsMake(button.frame.size.height - button.imageView.frame.origin.y, -button.titleLabel.bounds.size.width-50, 0, 0 );
        [self.view addSubview:button];
    }
    
    self.currentButton=[self.view viewWithTag:1];
    [self.currentButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //
    //    self.huakuaiView=[[UIView alloc]initWithFrame:CGRectMake(0, 114, Width/buttonName.count, 2)];
    //    self.huakuaiView.backgroundColor=[UIColor redColor];
    //    [self.view addSubview:self.huakuaiView];
    
    
    
}

//界面的跳转
-(void)clickButton:(UIButton *)button{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
