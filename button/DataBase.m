//
//  DataBase.m
//  button
//
//  Created by ronakj on 4/28/16.
//  Copyright © 2016 com.ronak.zaptech. All rights reserved.
//

#import "DataBase.h"

@implementation DataBase


-(BOOL)insertUser:(NSArray *)dealArray
{
    AppDel= ((AppDelegate*)[[UIApplication sharedApplication] delegate]);
    
        NSLog(@"%@",dealArray);
        
        BOOL isok=NO;
        
        sqlite3_stmt    *statement5;
    
        if(sqlite3_open([AppDel.dbpath UTF8String],&db) == SQLITE_OK)
        {
            for (int i = 0; i<[dealArray count];i++)
            {
                
                query = [NSString stringWithFormat: @"INSERT INTO ronak (id,name) VALUES ('%@','%@')",[[dealArray objectAtIndex:i]objectForKey:@"id"],[[dealArray objectAtIndex:i]objectForKey:@"name"]];
                
                const char *insert_stmt = [query UTF8String];
                
                sqlite3_prepare_v2(db, insert_stmt, -1, &statement5, NULL);
                if (sqlite3_step(statement5) == SQLITE_DONE)
                {
                    NSLog(@"Data name add---->");
                    
                } else {
                    
                }
                sqlite3_finalize(statement5);
            }
            sqlite3_close(db);
        }
    
        return isok;
        
        
    }
    

@end
