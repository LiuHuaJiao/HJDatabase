//
//  SqliteUtils.m
//  Calendar
//
//  Created by 刘花椒 on 15/12/2.
//
//

#import "SqliteUtils.h"

@implementation SqliteUtils

+ (BOOL) isTableExist:(sqlite3*)db TableName:(NSString*)tableName
{
    NSString* sql = [[NSString alloc] initWithFormat:@"select count(*) from sqlite_master where type = \'table\' and name = \'%@\'", tableName];
    // NSLog(@" table exist sql : %@", sql);
    BOOL isExist = NO;
    sqlite3_stmt* statement = nil;
    if(sqlite3_prepare_v2(db, [sql UTF8String], -1, &statement, nil) == SQLITE_OK){
        if (sqlite3_step(statement) == SQLITE_ROW) {
            isExist =  sqlite3_column_int(statement, 0) != 0;
        }
        if (statement) {
            sqlite3_finalize(statement);
        }
        
    }
    return isExist;
}

+ (BOOL) executeSql:(sqlite3*)db Sql:(NSString*)sql
{
    char *err;
    int nRet = sqlite3_exec(db, [sql UTF8String], NULL, NULL, &err);
    if(err){
        NSLog(@" execute sql error : %s", err);
        //        free(err);
        sqlite3_free(err);
    }
    
    return nRet == SQLITE_OK;
}

@end
