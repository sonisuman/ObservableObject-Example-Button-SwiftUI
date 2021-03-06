//
//  FancyScoreView.swift
//  ObservableExample2
//
//  Created by Soni Suman on 26/12/19.
//  Copyright © 2019 Soni Suman. All rights reserved.
//

import SwiftUI

struct FancyScoreView: View {
    @EnvironmentObject var userSettings: UserSettings
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
            Button("Increment Score") {
                self.userSettings.score += 1
            }.padding().background(Color.green)}.padding().background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
    }
}
