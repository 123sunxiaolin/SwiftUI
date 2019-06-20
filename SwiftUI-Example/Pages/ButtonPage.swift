//
//  ButtonPage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/20.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI

struct ButtonPage : View {
    var body: some View {
        Button(action: {
            print("button Clicked!")
        }) {
            Text("Test Button")
                .bold()
                .color(.orange)
        }.navigationBarTitle(Text("Button"))
    }
}

#if DEBUG
struct ButtonPage_Previews : PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}
#endif
