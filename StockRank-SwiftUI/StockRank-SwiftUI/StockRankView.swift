//
//  StockRankView.swift
//  StockRank-SwiftUI
//
//  Created by Dahlia on 7/22/24.
//

import SwiftUI

struct StockRankView: View {
	
//	@State var list = StockModel.list
	
	@StateObject var vm = StockRankViewModel()
	
	var body: some View {
		NavigationStack {
			List($vm.models) { $item in
				ZStack {
					NavigationLink {
						StockDetailView(viewModel: vm, stock: $item)
					} label: {
						EmptyView()
					}
					StockRankRow(stock: $item)
				}
				.listRowInsets(EdgeInsets())
				.frame(height: 80)
			}
			.listStyle(.plain)	// 디자인을 커스텀하자
			.navigationTitle("Stock Rank")
		}
	}
}

#Preview {
	StockRankView()
		.preferredColorScheme(.dark)
}
