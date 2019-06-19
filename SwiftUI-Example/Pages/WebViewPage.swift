//
//  WebViewPage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/19.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI
import WebKit

struct WebViewPage : UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: URL(string: "https://www.apple.com")!)
        uiView.load(req)
    }
}

#if DEBUG
struct WebViewPage_Previews : PreviewProvider {
    static var previews: some View {
        WebViewPage()
    }
}
#endif
