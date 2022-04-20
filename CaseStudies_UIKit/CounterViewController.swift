//
//  CounterViewController.swift
//  CaseStudies_UIKit
//
//  Created by Taisei Sakamoto on 2022/04/21.
//

import Combine
import ComposableArchitecture
import SwiftUI
import UIKit

struct CounterState: Equatable, Identifiable {
    let id = UUID()
    var count = 0
}

enum ConterAction: Equatable {
    case decrementButtonTapped
    case incrementButtonTapped
}

struct ConterEnvironment {}

let conterReducer = Reducer<CounterState, ConterAction, ConterEnvironment> { state, action, _ in
    switch action {
    case .decrementButtonTapped:
        state.count -= 1
        return .none
    case .incrementButtonTapped:
        state.count += 1
        return .none
    }
}
