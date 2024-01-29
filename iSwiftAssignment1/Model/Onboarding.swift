//
//  Onboarding.swift
//  iSwiftAssignment1
//
//  Created by roxx on 1/29/24.
//

import Foundation

struct Onboarding: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    var tag: Int
}

extension Onboarding {
    static let data: [Onboarding] = [
        Onboarding(image: "clear1", title: "Your Life in Lists", description: "Clear is a colorfull canvas for your thoughts,plans and goals. Here’s what makes it uniquely fun and effective.", tag: 0),
        
        Onboarding(image: "clear2", title: "Radically Simple", description: "Clear is pristine place to think, totally free of disctractions or feature clutter.", tag: 1),
        
        Onboarding(image: "clear3", title: "Remarkably Fluent", description: "Clear’s gesture shortcuts are intuitive and efficient. Try pinching to insert or take a screenshot to share a list.", tag: 2),
        
        Onboarding(image: "clear4", title: "Strangely Addictive", description: "Clear harnesses your dopamine with satisfying sounds, haptics, and collectibles that unlock as you get things done.", tag: 3),
        
        Onboarding(image: "clear5", title: "Insanely Personalizable", description: "Mix and match hundreds of collectibles, totally transforming Clear to suit your style and whims.", tag: 4),
        
        Onboarding(image: "clear6", title: "Treat Yourself", description: "Because it’s productive to after ajob well done. Clear is 100% free to use and also a treat to shop in. Happy listing!", tag: 5),
    ]
}

