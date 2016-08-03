//
//  DataBase.h
//  button
//
//  Created by ronakj on 4/28/16.
//  Copyright © 2016 com.ronak.zaptech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "AppDelegate.h"

@interface DataBase : NSObject{
    NSString *dataPath;
    sqlite3 *db;
    NSString *query;
    AppDelegate *AppDel;
}

-(BOOL)insertUser:(NSArray *)dealArray;
@end
