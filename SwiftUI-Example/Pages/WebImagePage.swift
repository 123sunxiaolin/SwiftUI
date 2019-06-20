//
//  WebImagePage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/20.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI

struct WebImagePage : View {
    
    @State var image: UIImage? = nil // binding
    let placeholderImage = UIImage(named: "icon")!
    
    var body: some View {
        Image(uiImage: self.image ?? placeholderImage)
            .resizable()
            .onAppear(perform: downloadWebImage)
            .frame(width: 80, height: 80, alignment: .center)
            .tapAction {
               print("Tap...")
        }.navigationBarTitle(Text("WebImage"))
    }
    
    func downloadWebImage() {
        guard let url = URL(string: "https://picsum.photos/50/50?i=30") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, errord) in
            guard let imgData = data, let img = UIImage(data: imgData) else {
                return
            }
            self.image = img
        }.resume()
    }
}

#if DEBUG
struct WebImagePage_Previews : PreviewProvider {
    static var previews: some View {
        WebImagePage()
    }
}
#endif
