//
//  PickerPage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/20.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI

struct PickerPage : View {
    
    @State var leftIndex = 0
    @State var rightIndex = 0
    
    let leftSource = (0..<10).map { $0%2 == 0 ? "🧜‍♀️\($0)":"🧚‍♀️\($0)" }
    let rightSource = (11..<36).map { String($0 - 1, radix: $0).uppercased()} // 获取大写字母

    var body: some View {
        HStack {
            VStack {
                Text("Left Value")
                Text("\(self.leftSource[self.leftIndex])")
                    .bold()
                    .color(.orange)
                Picker(selection: $leftIndex, label: Text("left Picker")) {
                    ForEach(0..<self.leftSource.count) {
                        Text(self.leftSource[$0]).tag($0)
                    }
                    }.frame(width: UIScreen.main.bounds.width * 0.5)
            }
            
            VStack {
                Text("right Value")
                Text("\(self.rightSource[self.rightIndex])")
                    .bold()
                    .color(.orange)
                Picker(selection: $rightIndex, label: Text("left Picker")) {
                    ForEach(0..<self.rightSource.count) {
                        Text(self.rightSource[$0]).tag($0)
                    }
                    }.frame(width: UIScreen.main.bounds.width * 0.5)
            }
        }
    }
}

#if DEBUG
struct PickerPage_Previews : PreviewProvider {
    static var previews: some View {
        PickerPage()
    }
}
#endif
