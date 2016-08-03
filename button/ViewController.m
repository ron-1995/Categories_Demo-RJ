//
//  ViewController.m
//  button
//
//  Created by ronakj on 4/28/16.
//  Copyright © 2016 com.ronak.zaptech. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+StyledButtonViewController.h"
#import "DataBase.h"
@interface ViewController ()
{
    DataBase *dbh;
    BOOL isinitbackcolor;
    UIButton *CustButton;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   CustButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CustButton.backgroundColor = [UIColor blackColor];
    [CustButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal ];
    
    
    [CustButton addTarget:self
               action:@selector(mainMethod)
     forControlEvents:UIControlEventTouchUpInside];
    
    [CustButton addTarget:self
                   action:@selector(secondMethod)
         forControlEvents:UIControlEventTouchDown];
    
    
    [CustButton setTitle:@"Show View" forState:UIControlStateNormal];
    CustButton.frame = CGRectMake(80.0, 350, 140, 35);
    [self.view addSubview:CustButton];
    
    
    dbh=[[DataBase alloc]init];
    
    [_btn initWithBorders];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)mainMethod{
   // [CustButton initBackcolor];
    [self Method1];
    
}
-(void)Method1{
    [CustButton initBackcolor];
    
}
-(void)secondMethod{
    [self Method2];
    
}
-(void)Method2{
    [CustButton initBack];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction:(id)sender
{
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc ]init];
    
    
    [dic setObject:_txtname.text forKey:@"name"];
     [dic setObject:_txtid.text forKey:@"id"];
    
    
    NSMutableArray  *Array=[[NSMutableArray alloc]init];
    
    [Array addObject:dic];
    
     [dbh insertUser:Array];
    
    [_btn initBackcolor];
    
   
    
    
    
    
    
}
@end
