//
//  ViewController.m
//  TestFMDB
//
//  Created by admin on 14-10-13.
//  Copyright (c) 2014年 ___DNEUSER___. All rights reserved.
//

#import "ViewController.h"
#import "UserDB.h"
#import "SqliteDictionary.h"
#import "SqliteProperty.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    //==============================插入数据==============================
    //key
     NSArray * ara = [SqliteProperty getProperty];    //value
     NSArray * ara2 = [[NSArray alloc] initWithObjects:@"4",@"5",@"6",@"3", nil];
    //key and value
     NSMutableDictionary * dic = [[NSMutableDictionary alloc] init];
    //数据库表名
    [dic setObject:@"ww" forKey:@"name"];
    [dic setObject:ara forKey:@"keys"];
     NSDictionary * diction = [SqliteDictionary getTheKeys:ara AndValues:ara2];
     NSLog(@"====%@ssd===",diction);
    [dic setObject:diction forKey:@"dictionary"];
    UserDB * db = [[UserDB alloc] init];
    [db saveInformation:dic];
    //NSLog(@"%@",dic);
    //======================查询数据=======================================
    
    
    
    
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
