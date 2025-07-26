//
//  CardStackView.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        ZStack {
            ForEach(viewModel.cardModels) { card in
                CardView(viewModel: viewModel, model: card)
            }
        }
    }
}

#Preview {
    CardStackView()
}
