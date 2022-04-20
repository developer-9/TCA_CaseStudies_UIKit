//
//  RootViewController.swift
//  CaseStudies_UIKit
//
//  Created by Taisei Sakamoto on 2022/04/20.
//

import ComposableArchitecture
import SwiftUI
import UIKit

struct CaseStudy {
    let title: String
    let viewController: () -> UIViewController
    
    init(title: String, viewController: @autoclosure @escaping () -> UIViewController) {
        self.title = title
        self.viewController = viewController
    }
}
