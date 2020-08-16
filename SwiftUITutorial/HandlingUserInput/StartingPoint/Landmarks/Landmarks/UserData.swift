//
//  UserData.swift
//  Landmarks
//
//  Created by okitsu teppei on 2020/08/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine  //値を監視して仕分けや型の変更を行えるフレームワーク

final class UserData: ObservableObject  { //Combineフレームワークで扱える型に値を変更するクラス
    @Published var showFavoritesOnly = false //Publishedを付けるとCombineで監視できる
    @Published var landmarks = landmarkData
}
