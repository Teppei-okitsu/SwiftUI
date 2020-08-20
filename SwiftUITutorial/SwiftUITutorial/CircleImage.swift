//
//  CircleImage.swift
//  SwiftUITutorial
//
//  Created by okitsu teppei on 2020/08/12.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("waterfalls")
            .frame(width: 300.0, height: 300.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) //丸く切り抜く
            .overlay( //画像の上に重ねるlay
                Circle().stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
