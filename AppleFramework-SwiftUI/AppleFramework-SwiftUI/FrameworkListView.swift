//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by Dahlia on 7/25/24.
//

import SwiftUI

struct FrameworkListView: View {
	@State var list: [AppleFramework] = AppleFramework.list
	
	let layout: [GridItem] = [
		GridItem(.flexible()),
		GridItem(.flexible()),
		GridItem(.flexible()),
	]
	// Grid 만들기
	// UIKit - UICollectionView
	// 	- Data, Presentation, Layout
	// SwiftUI - LazyVGrid, LazyHGrid
	// 	- Data, Presentation, Layout
	
	
    var body: some View {
		NavigationStack {
			ScrollView {
				LazyVGrid(columns: layout) {
					ForEach(list) { list in
						FrameworkCell(framework: list)
					}
				}
				.padding([.top ,.leading, .trailing], 16.0)
			}
			.navigationTitle("🍔 AppleFramework")
		}
    }
}

#Preview {
    FrameworkListView()
}
