//
//  RowPage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/19.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI

struct RowPage : View {
    
    private let title: String
    private let subTitle: String?
    
    init(_ title: String, subTitle: String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!)
                    .font(.subheadline)
                    .opacity(0.5)
                    .lineLimit(nil)
            }
        }
    }
}

#if DEBUG
struct RowPage_Previews : PreviewProvider {
    static var previews: some View {
        RowPage("Test...")
    }
}
#endif
