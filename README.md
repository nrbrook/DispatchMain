# DispatchMain
## Introduction

This is a couple of C functions which use libdispatch to run a block on the main queue if it isn't currently. This is useful when you aren't sure if you are on the main queue, but want to be sure if you aren't that you block the current queue to prevent race conditions. There are sync and async versions of this function.

## Usage

### Objective C
```Objective-C
// possibly running on main queue
dispatch_sync_main_if_required(^{
    // your code to run on main queue
});
```

### Swift
```Swift
// possibly running on main queue
DispatchQueue.syncMainIfRequired {
    // your code to run on main queue
}
```
