//
//  StockDetailView.swift
//  StockRank-SwiftUI
//
//  Created by Dahlia on 7/26/24.
//

import SwiftUI

struct StockDetailView: View {
	
	@ObservedObject var viewModel: StockRankViewModel
	
	@Binding var stock: StockModel
	
	var body: some View {
		VStack(spacing: 40) {
			Text("# of My Favorites: \(viewModel.numOfFavorites)")
				.font(.system(size: 20, weight: .bold, design: .default))
			
			Image(stock.imageName)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 120, height: 120)
			
			Text(stock.name)
				.font(.system(size: 30, weight: .bold))
			
			Text("\(stock.price) 원")
				.font(.system(size: 20, weight: .bold))
				.foregroundStyle(stock.diff > 0 ? .red : .blue)
			
			Button {
				stock.isFavorites.toggle()
			} label: {
				Image(systemName: "heart.fill")
					.resizable()
					.renderingMode(.template)
					.aspectRatio(contentMode: .fit)
					.frame(width: 80, height: 80)
					.foregroundStyle(Color(stock.isFavorites ? .red : .gray))
			}
		}
	}
}

#Preview {
	StockDetailView(viewModel: StockRankViewModel(),
					stock: .constant(StockModel.list[0]))
		.preferredColorScheme(.dark)
}
