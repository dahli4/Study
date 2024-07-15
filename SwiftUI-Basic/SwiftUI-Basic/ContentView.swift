//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by Dahlia on 7/15/24.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack() {
			ImageView()
			ButtonView()
			TextView()
			
			Spacer()
			
			HStack {
				ImageView()
				ButtonView()
				TextView()
			}
			
			Spacer()
			
			ZStack {
				ImageView()
				ButtonView()
				TextView()
			}
		}
	}
}

#Preview {
	ContentView()
}
