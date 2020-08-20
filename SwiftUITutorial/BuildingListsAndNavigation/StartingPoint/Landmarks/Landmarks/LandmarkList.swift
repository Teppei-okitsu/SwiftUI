//
//  LandmarkList.swift
//  Landmarks
//
//  Created by okitsu teppei on 2020/08/12.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List (landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle(Text("Landmarks"))
        }
    }
}

@available(iOS 14.0, *)
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
