//
//  NavigationButtonPage.swift
//  StepByStep
//
//  Created by wander on 2021/12/5.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import Combine

struct EditButtonPage : View {
    
    @ObservedObject private var source = dataSource()
    
    var body: some View {
        List {
            ForEach(source.items, id: \.self) { idx in
                PageRow(title: "\(idx)")
            }
            .onDelete(perform: deletePlace)
            .onMove(perform: movePlace)
        }
        .navigationBarTitle(Text("Edit Row"), displayMode: .inline)
        .navigationBarItems(trailing: EditButton())
    }
    
    func deletePlace(at offset: IndexSet) {
        if let last = offset.last {
            source.items.remove(at: last)
            print(source.items.count)
        }
    }
    
    func movePlace(from source: IndexSet, to destination: Int) {
        print(source,destination)
    }
    
}

class dataSource: ObservableObject {
    
    public var didChange = PassthroughSubject<Void, Never>()
    
    public var items: [Int] {
        didSet {
            didChange.send(())
        }
    }
    
    init() {
        self.items = (0..<10).map { $0 }
    }
}

struct PageRow : View {
    
    private let title: String
    private let subTitle: String?
    
    init(title: String,subTitle: String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
    }
    
}



struct EditButtonPage_Previews : PreviewProvider {
    static var previews: some View {
        EditButtonPage()
    }
}
