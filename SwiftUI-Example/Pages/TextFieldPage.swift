//
//  TextFieldPage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/19.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI

struct TextFieldPage : View {
    
    @State var name: String = ""
    @State var password: String = ""
    
    let nameText = Text("请填入昵称").color(.secondary).font(.system(size: 16))
    let pwdText = Text("请填入密码").color(.secondary).font(.system(size: 16))
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("昵称：").color(.secondary)
                TextField(self.$name, placeholder: nameText, onEditingChanged: { changed in
                    print("changed:\(changed)")
                }) {
                    print("username:\(self.name)")
                }
                
                }
                .padding(10).frame(height: 50)
                .textFieldStyle(.roundedBorder)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            HStack {
                Text("密码：").color(.secondary)
                SecureField(self.$password, placeholder: self.pwdText) {
                    print("Password: \(self.password)")
                    self.endEditing(true)
                }
                }
                .padding(10)
                .frame(height: 50)
                .textFieldStyle(.roundedBorder)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            }.offset(y: -150)
            .navigationBarTitle(Text("TextField"))
    }
    
    private func endEditing(_ force: Bool) {
        UIApplication.shared.keyWindow?.endEditing(force)
    }
}

#if DEBUG
struct TextFieldPage_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldPage()
    }
}
#endif
