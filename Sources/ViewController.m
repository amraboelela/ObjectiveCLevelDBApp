//
//  ViewController.m
//  ObjectiveCLevelDBTest
//
//  Created by Amr Aboelela on 8/17/16.
//  Copyright © 2016 Amr Aboelela. All rights reserved.
//

//#import <LevelDB.h>
#import "ViewController.h"

dispatch_queue_t lvldb_test_queue;

@interface ViewController ()

@end

@implementation ViewController

static int db_i = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
+ (void)setUp {
    lvldb_test_queue = dispatch_queue_create("Create DB", DISPATCH_QUEUE_SERIAL);
}

- (void)setUp {
    dispatch_sync(lvldb_test_queue, ^{
        db = [LevelDB databaseInLibraryWithName:[NSString stringWithFormat:@"TestDB%d", db_i]];
        db_i++;
    });
    [db removeAllObjects];
    
    db.encoder = ^ NSData * (LevelDBKey *key, id value) {
        return [NSJSONSerialization dataWithJSONObject:value options:0 error:nil];
    };
    db.decoder = ^ id (LevelDBKey *key, NSData *data) {
        return [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    };
}*/

@end
