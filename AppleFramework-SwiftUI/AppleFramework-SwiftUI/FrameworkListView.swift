//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by Dahlia on 7/25/24.
//

import SwiftUI

struct FrameworkListView: View {
	@StateObject var vm = FrameworkListViewModel()
	
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
					ForEach(vm.models) { $list in
						FrameworkCell(framework: $list)
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
