//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by okitsu teppei on 2020/08/12.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 5.9689162, longitude: -62.5365188) //緯度経度
        
        let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0) //地理的な範囲の大きさを指定
        
        let region = MKCoordinateRegion(center: coordinate, span: span) // 座標の中心、表示範囲の大きさ
        
        uiView.setRegion(region, animated: true) // regionで規定された領域をビューに表示する
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
