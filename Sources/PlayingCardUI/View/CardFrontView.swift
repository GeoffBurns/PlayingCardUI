//
//  File.swift
//  
// 
//  Created by Geoff Burns on 19/9/21.
//
 
import SwiftUI
import PlayingCard

public enum Validitity
{
    case good
    case bad
    case unknown
    
    public var color : Color? {
       switch self
       {
       case .bad : return .red
       case .good : return .green
       default : return nil
       }
    }
}

@available(iOS 13.0, *)
public struct CardFrontView: View {
    public var card : PlayingCard
    public var valid : Validitity = .unknown
  
    public var imageFront: Image {
        return CardImage.get(card: card)
    }
    
    public var body: some View { 
                imageFront
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(valid.color)
    }
}

@available(iOS 13.0, *)
struct CardFrontView_Previews: PreviewProvider {
    static var previews: some View {
        
        CardFrontView(card: CardName.ace.of(.spades)!)
    }
}
