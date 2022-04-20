//
//  UIViewRepresented.swift
//  CaseStudies_UIKit
//
//  Created by Taisei Sakamoto on 2022/04/21.
//

import SwiftUI

struct UIViewRepresented<UIViewType>: UIViewRepresentable where UIViewType: UIView {
    let makeUIView: (Context) -> UIViewType
    let updateUIView: (UIViewType, Context) -> Void = { _, _ in }
    
    func makeUIView(context: Context) -> UIViewType {
        makeUIView(context: context)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        updateUIView(uiView, context: context)
    }    
}
