//
//  ContentView.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/19.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("特殊视图")) {
                    NavigationButton(destination: WebViewPage()) {
                        RowPage("WebView", subTitle: "展示网页视图")
                    }
                    
                    NavigationButton(destination: ControllerPage<TestViewController>()) {
                        RowPage("UIViewController", subTitle: "展示UIViewController")
                    }
                }
                
                Section(header: Text("基础组件")) {
                    NavigationButton(destination: TextPage()) {
                        RowPage("Text", subTitle: "显示单行或者多行")
                    }
                    
                    NavigationButton(destination: TextFieldPage()) {
                        RowPage("TextField", subTitle: "显示可编辑文本界面的输入控件")
                    }
                    
                    NavigationButton(destination: WebImagePage()) {
                        RowPage("WebImage", subTitle: "显示网络图片")
                    }
                }
                
                Section(header: Text("按钮")) {
                    NavigationButton(destination: ButtonPage()) {
                        RowPage("Button", subTitle: "普通按钮的点击事件")
                    }
                    
                    PresentationButton(RowPage("PresentationButton", subTitle: ""), destination: Text("show presentation button")) {
                        print("Present!!")
                    }
                    
                    NavigationButton(destination: EditPage()) {
                        RowPage("EditButton", subTitle: "列表的编辑模式")
                    }
                }
                
                Section(header: Text("选择器")) {
                    NavigationButton(destination: PickerPage()) {
                        RowPage("Picker", subTitle: "选择器")
                    }
                    
                    NavigationButton(destination: DatePickerPage()) {
                        RowPage("DatePicker", subTitle: "日期选择器")
                    }
                }
                
                }
                .listStyle(.grouped)
                .navigationBarTitle(Text("Example"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    print("tap")
                }, label: {
                    Text("Right").color(.red)
                }))
            
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
#endif
