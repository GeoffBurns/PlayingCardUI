//
//  ICardImageRepository.swift
//  
//
//  Created by Geoff Burns on 23/9/21.
//

import SwiftUI
import PlayingCard

public protocol ICardImageRepository {
     func image(card: PlayingCard) -> Image?
}
