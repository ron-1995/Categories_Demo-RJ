//
//  AppDelegate.h
//  button
//
//  Created by ronakj on 4/28/16.
//  Copyright © 2016 com.ronak.zaptech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
     NSString *dbPath;
}

@property (strong, nonatomic) UIWindow *window;
-(void)check;
@property (retain, nonatomic)NSString *dbpath;
@end

