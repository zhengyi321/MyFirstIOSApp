//
//  ViewController.m
//  MyFirstApp
//
//  Created by 杨涵 on 2020/3/26.
//  Copyright © 2020 yang. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"
#import "SecondViewController.h"
@interface ViewController ()

@property (nonatomic,strong)UIButton *currentButton;
@property (nonatomic,strong)UIView *huakuaiView;
@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    [self createButton];
   
}

-(void)createButton{
    NSArray *buttonName=@[@"快速选酒",@"白酒",@"葡萄酒",@"洋酒",@"啤酒",@"黄酒"];
    for (NSInteger i=0; i<buttonName.count; i++) {
        UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
        button.frame=CGRectMake(Width/buttonName.count*i, 64, Width/buttonName.count, 50) ;
        [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        button.tag=i+1;
        [button setTitle:buttonName[i] forState:UIControlStateNormal];
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
    SecondViewController *second = [[SecondViewController alloc]init];
    
//    UINavigationController *uiNavC = [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc]init]];
//    [self presentViewController:uiNavC animated:YES completion:nil];
//    ExpressViewController *express=[[ExpressViewController alloc]init];
//    RunErrandsViewController *runErrand=[[RunErrandsViewController alloc]init];
//    DelightsViewController *delights=[[DelightsViewController alloc]init];
//    AlcoholViewController *alcohol=[[AlcoholViewController alloc]init];
//    ConvenienceStoreViewController *convenienceStore=[[ConvenienceStoreViewController alloc]init];
//    DryCleanViewController *dryClean=[[DryCleanViewController alloc]init];
//    HardwareViewController *hardWare = [[HardwareViewController alloc]init];
//    FruitViewController *fruit = [[FruitViewController alloc]init];
//    NSString *tempString = [NSString stringWithFormat:@"%d",button.tag];
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:tempString message:@"ss" delegate:@"ff" cancelButtonTitle:@"fgggh" otherButtonTitles:@"rere", nil];
//    [alert show];
    
    switch (button.tag) {
        case 1:
            
            NSLog(@"ssssddsdsdsdsdsdsd");
            [self presentViewController:second animated:YES completion:nil];
//            [self.navigationController pushViewController:second animated:YES];
//
//            [self.navigationController pushViewController:express animated:YES];
//
            break;
//        case 2:
//            [self.navigationController pushViewController:runErrand animated:YES];
//            break;
//        case 3:
//            [self.navigationController pushViewController:delights animated:YES];
//            break;
//        case 4:
//            [self.navigationController pushViewController:convenienceStore animated:YES];
//            break;
//        case 5:
//            [self.navigationController pushViewController:alcohol animated:YES];
//            break;
//        case 6:
//            [self.navigationController pushViewController:dryClean animated:YES];
//            break;
//        case 7:
//            [self.navigationController pushViewController:hardWare animated:YES];
//            break;
//        case 8:
//            [self.navigationController  pushViewController:fruit animated:YES];
//            break;
        default:
            break;
    }
    
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
