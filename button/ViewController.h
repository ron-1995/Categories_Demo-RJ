//
//  ViewController.h
//  button
//
//  Created by ronakj on 4/28/16.
//  Copyright © 2016 com.ronak.zaptech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtid;
@property (strong, nonatomic) IBOutlet UITextField *txtname;

@end

