//
//  CardView.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import SwiftUI

struct CardView: View {
    @ObservedObject var viewModel: CardsViewModel
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0
    
    let model: CardModel

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top){
                Image(user.profileImageURLs[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: imageCount)
                    }
                if imageCount > 1 {
                    CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: imageCount)
                }
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            
            UserInfoView(user: user)
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    var user: User {
        return model.user
    }
    
    var imageCount: Int {
        return user.profileImageURLs.count
    }
}

private extension CardView {
    func returnToCenter() {
        xOffset = 0
        degrees = 0
    }
    
    func swipeRight() {
        xOffset = 500
        degrees = 12
        
//        viewModel.removeCard(model)
    }
    
    func swipeLeft() {
        xOffset = -500
        degrees = -12
        
//        viewModel.removeCard(model)
    }
}

private extension CardView {
    func onDragChanged (_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutOff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutOff {
            swipeRight()
        }
        else {
            swipeLeft()
        }
    }
}


#Preview {
    CardView(
        viewModel: CardsViewModel(service: CardService()),
        model: CardModel(user: MockData.users[10])
    )
}
