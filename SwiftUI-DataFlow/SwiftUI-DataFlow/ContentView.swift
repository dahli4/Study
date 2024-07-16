//
//  ContentView.swift
//  SwiftUI-DataFlow
//
//  Created by Dahlia on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		PlayerView(episode: Episode.list[0])
    }
}

#Preview {
    ContentView()
}
