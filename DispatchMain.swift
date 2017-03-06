//
//  DispatchMain.swift
//
//  Created by Nick Brook on 06/03/2017.
//  Copyright © 2017 Nick Brook. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    public static func asyncMainIfRequired(group: DispatchGroup? = nil, qos: DispatchQoS = DispatchQoS.default, flags: DispatchWorkItemFlags = [], execute work: @escaping @convention(block) () -> Swift.Void) {
        guard Thread.isMainThread else {
            DispatchQueue.main.async(group: group, qos: qos, flags: flags, execute: work)
            return
        }
        work()
    }
    
    public static func syncMainIfRequired(execute block: () -> Swift.Void) {
        guard Thread.isMainThread else {
            DispatchQueue.main.sync(execute: block)
            return
        }
        block()
    }
}
