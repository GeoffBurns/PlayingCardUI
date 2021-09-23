//
//  CardImage.swift
//  
//
//  Created by Geoff Burns on 23/9/21.
//

import SwiftUI
import PlayingCard


public enum CardImage
{
    public static func get(name: String) -> Image
    {
       return Image(name, bundle: Bundle.module)
    }
    public static func get(card: PlayingCard) -> Image
    {
        return CardImageRegistry.shared.image(card: card)
    } 
    
}

