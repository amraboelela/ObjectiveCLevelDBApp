//
//  BaseTestClass.m
//  Objective-LevelDB Tests
//
//  Created by Mathieu D'Amours on 11/14/13.
//
//

#import "BaseTestClass.h"

//dispatch_queue_t lvldb_test_queue;

@implementation BaseTestClass 

static int db_i = 0;

+ (void)setUp {
    //lvldb_test_queue = dispatch_queue_create("Create DB", DISPATCH_QUEUE_SERIAL);
}

- (void)setUp {
    //dispatch_sync(lvldb_test_queue, ^{
    db = [LevelDB databaseInLibraryWithName:[NSString stringWithFormat:@"TestDB%d", db_i]];
    db_i++;
    //});
    [db removeAllObjects];
    
    db.encoder = ^ NSData *(NSString *key, id value) {
        return [NSJSONSerialization dataWithJSONObject:value options:0 error:nil];
    };
    db.decoder = ^ id (NSString *key, NSData *data) {
        NSString *dataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        id dic = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        return [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    };
}

- (void)tearDown {
    [db close];
    [db deleteDatabaseFromDisk];
}

@end
