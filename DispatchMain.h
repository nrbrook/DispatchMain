//
//  DispatchAsyncMain.h
//
//  Created by Nick Brook on 16/12/2016.
//  Copyright © 2016 Nick Brook. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef __BLOCKS__
__OSX_AVAILABLE_STARTING(__MAC_10_6,__IPHONE_4_0)
DISPATCH_EXPORT DISPATCH_NONNULL_ALL DISPATCH_NOTHROW
BOOL
dispatch_async_main_if_required(dispatch_block_t block);
#endif

#ifdef __BLOCKS__
__OSX_AVAILABLE_STARTING(__MAC_10_6,__IPHONE_4_0)
DISPATCH_EXPORT DISPATCH_NONNULL_ALL DISPATCH_NOTHROW
BOOL
dispatch_sync_main_if_required(dispatch_block_t block);
#endif
