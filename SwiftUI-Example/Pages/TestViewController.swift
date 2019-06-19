//
//  TestViewController.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/19.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import UIKit
import SwiftUI

class TestViewController: UIViewController {

    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open SwiftUI View", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.setTitleColor(.orange, for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(openContentView),
                         for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(button)
    }
}

// MARK: - Action
extension TestViewController {
    @objc func openContentView() {
        let vc = UIHostingController(rootView: ContentView())
        present(vc, animated: true, completion: nil)
    }
}
