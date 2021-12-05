//
//  ContentView.swift
//  StepByStep
//
//  Created by wander on 2021/11/22.
//  Copyright © 2021 cn.wanderros. All rights reserved.
//

import SwiftUI
import SPIndicator
import SPConfetti

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286,
            longitude: -116.166868
        )
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

struct ContentView: View {
    @State var count:Int = 0
    @State private var show: Bool = false
    @State private var x: CGFloat = 20
    @State private var y: CGFloat = 20
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var now = Date()
    var body: some View {
        VStack {
            //            Text("Tap")
            //                .gesture(
            //                    TapGesture()
            //                        .onEnded { _ in
            //                            // do something
            //                        }
            //                )
            MapView()
            List {
                Section(header: Text("Good Heros"), footer: Text("Powerful")){
                    Text("Thanos")
                }
                Section(header: Text("Bad Heros"), footer: Text("Not as Powerful")){
                    Text("Iron Man")
                }
            }.listStyle(GroupedListStyle())
            
Button(action: {
    self.show.toggle()
}, label: {

    Text("按钮")
})
.alert(isPresented: $show) {
            Alert(title: Text("Important message"),
            message: Text("Wear sunscreen"),
             dismissButton: .default(Text("Got it!"))
             )
        }
            //            Text("Long Press")
            //                .gesture(
            //                    LongPressGesture(minimumDuration: 2)
            //                        .onEnded { _ in
            //                            // do something
            //                            print("long press")
            //                        }
            //                )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
