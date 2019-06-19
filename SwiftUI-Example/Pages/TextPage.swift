//
//  TextPage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/19.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI

let github = "https://github.com/123sunxiaolin/SwiftUI"

struct TextPage : View {
    var body: some View {
        VStack(spacing: 15) {
            Text("SwiftUI")
            Text("SwiftUI")
                .color(.red)
                .bold()
                .font(.title)
                .fontWeight(.medium).italic()
                .shadow(color: .blue, radius: 1, x: 0, y: 2)
            
            Text(github)
                .underline(true, color: .orange)
                .font(.system(size: 20)).tapAction {
                print(github)
            }
            
            HStack {
                Text("111")
                Text("222").bold()
                Text("3333").color(.red)
            }
            
            Text("Views and controls are the visual building blocks of your app’s user interface." +
                " Use them to present your app’s content onscreen.")
                .lineLimit(20)
        }
    }
}

#if DEBUG
struct TextPage_Previews : PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
#endif
