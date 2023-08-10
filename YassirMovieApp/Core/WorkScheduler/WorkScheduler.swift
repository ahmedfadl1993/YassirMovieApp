//
//  Scheduler.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import Combine

final class WorkScheduler {

    static var backgroundWorkScheduler: OperationQueue = {
        let operationQueue = OperationQueue()
        operationQueue.maxConcurrentOperationCount = 5
        operationQueue.qualityOfService = QualityOfService.userInitiated
        return operationQueue
    }()

    static let mainScheduler = RunLoop.main
    static let mainThread = DispatchQueue.main
}
