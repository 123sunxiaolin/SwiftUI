//
//  EditPage.swift
//  SwiftUI-Example
//
//  Created by Jacklin on 2019/6/20.
//  Copyright © 2019 Jacklin. All rights reserved.
//

import SwiftUI
import Combine

struct EditPage : View {
    
    @ObjectBinding private var source = dataSource()
    
    var body: some View {
        List {
            ForEach(source.items) { item in
                RowPage("\(item)")
                }
                .onDelete(perform: deletePlace)
                .onMove(perform: movePlace)
            }.navigationBarTitle(Text("Edit Row"), displayMode: .large)
            .navigationBarItems(trailing: EditButton())
    }
    
    func deletePlace(at offset: IndexSet) {
        guard let last = offset.last?.id else {
            return
        }
        source.items.remove(at: last)
    }
    
    func movePlace(from source: IndexSet, to destation: Int) {
        print(source, destation)
    }
}

class dataSource: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    public var items: [Int] {
        didSet {
            didChange.send(())
        }
    }
    
    init() {
        self.items = (0..<10).map { $0 }
    }
}

#if DEBUG
struct EditPage_Previews : PreviewProvider {
    static var previews: some View {
        EditPage()
    }
}
#endif
