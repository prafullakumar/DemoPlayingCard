//
//  ContentView.swift
//  Loaders
//
//  Created by Prafulla Singh on 10/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import SwiftUI


struct ContentView: View {

var body: some View {
    HStack(spacing: 20) {
        Heart().fill(Color.red).frame(width: 100, height: 100)
        Diamond().fill(Color.red).frame(width: 100, height: 100)
        Spade().frame(width: 100, height: 100)
        Club().frame(width: 100, height: 100)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
