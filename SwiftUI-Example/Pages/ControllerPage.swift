//
//  ControllerPage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/19.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI

struct ControllerPage<T: UIViewController>: UIViewControllerRepresentable {
   
    func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerPage>) -> T {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: T, context: UIViewControllerRepresentableContext<ControllerPage<T>>) {
        debugPrint("\(#function):\(type(of: T.self))")
    }
}
