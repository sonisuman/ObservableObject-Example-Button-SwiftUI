//
//  ContentView.swift
//  ObservableExample2
//
//  Created by Soni Suman on 26/12/19.
//  Copyright © 2019 Soni Suman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack {
          Text("\(self.userSettings.score)")
            .font(.largeTitle)
            
            Button("Increment Score") {
                self.userSettings.score += 1
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
