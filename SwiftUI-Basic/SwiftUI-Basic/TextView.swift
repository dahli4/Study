//
//  TextView.swift
//  SwiftUI-Basic
//
//  Created by Dahlia on 7/15/24.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Swift UI")
			.font(.system(size: 40, weight: .bold, design: .default))
    }
}

#Preview {
    TextView()
}
