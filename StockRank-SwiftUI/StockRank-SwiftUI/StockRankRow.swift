//
//  StockRankRow.swift
//  StockRank-SwiftUI
//
//  Created by Dahlia on 7/23/24.
//

import SwiftUI

struct StockRankRow: View {
	
	var stock: StockModel
	
    var body: some View {
		HStack {
			Text("\(stock.rank)")
				.font(.system(size: 16, weight: .bold))
				.frame(width: 30)
				.foregroundStyle(.blue)
			
			Image("\(stock.imageName)")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 40, height: 40)
			
			VStack(alignment: .leading, spacing: 5) {
				Text("\(stock.name)")
					.font(.system(size: 12))
					.foregroundStyle(.white)
				
				HStack {
					Text("\(stock.price) 원")
						.font(.system(size: 12))
						.foregroundStyle(.gray)
					
					Text("\(stock.diff * 100, specifier: "%.2f") %")
						.font(.system(size: 12))
						.foregroundStyle(stock.diff > 0 ? .red : .blue)
				}
			}
			Spacer()
			
			Image(systemName: "heart.fill")
				.renderingMode(.template)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 40, height: 40)
				.foregroundStyle(.gray)
		}
		.padding()
		.frame(maxWidth: .infinity)
		.background(.black)
	}
}

#Preview {
	StockRankRow(stock: StockModel.list[0])
}
