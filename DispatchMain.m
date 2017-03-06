//
//  DispatchAsyncMain.m
//
//  Created by Nick Brook on 16/12/2016.
//  Copyright © 2016 Nick Brook. All rights reserved.
//

#import "DispatchMain.h"

BOOL dispatch_async_main_if_required(dispatch_block_t block) {
    if([NSThread isMainThread]) {
        block();
        return NO;
    }
    dispatch_async(dispatch_get_main_queue(), block);
    return YES;
}

BOOL dispatch_sync_main_if_required(dispatch_block_t block) {
    if([NSThread isMainThread]) {
        block();
        return NO;
    }
    dispatch_sync(dispatch_get_main_queue(), block);
    return YES;
}
