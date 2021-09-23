//
//  CardImageRegistry.swift
//  
//
//  Created by Geoff Burns on 23/9/21.
//

import SwiftUI
import PlayingCard


public class CardImageRegistry
{
    public static let shared = CardImageRegistry()
    
    public var registry : [ICardImageRepository] = []
    
    public func register(_ repo : ICardImageRepository)
    {
        registry.append(repo)
    }
    public func image(card: PlayingCard) -> Image
    {
        for  repo in registry
        { 
            if let image = repo.image(card:card)
            {
                return image
            }
        }
        return Image(card.imageName, bundle: Bundle.module)
    }
}
