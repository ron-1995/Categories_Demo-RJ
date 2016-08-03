//
//  UIButton+StyledButtonViewController.m
//  button
//
//  Created by ronakj on 4/28/16.
//  Copyright © 2016 com.ronak.zaptech. All rights reserved.
//

#import "UIButton+StyledButtonViewController.h"


@implementation UIButton(StyledButton)

- (void) initWithBorders {
    //style your button properties here
    
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 5;
    self.layer.shadowOffset = CGSizeMake(3.0f,3.0f);
    self.layer.cornerRadius = 5;
    
}
-(void)initBackcolor{
    self.backgroundColor =[UIColor redColor];
    self.layer.shadowRadius = 15;
    self.layer.cornerRadius = 7.0;
    
}
-(void)initBack{
    self.layer.shadowColor = [UIColor greenColor].CGColor;
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 5;
    self.layer.shadowOffset = CGSizeMake(3.0f,3.0f);
    self.layer.cornerRadius = 5;
    
}
@end
