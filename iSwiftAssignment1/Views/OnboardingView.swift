//
//  OnboardingView.swift
//  iSwiftAssignment1
//
//  Created by roxx on 1/29/24.
//

import SwiftUI

struct OnboardingView: View {
    private let tabs: [Onboarding] = Onboarding.data
    private let dotIndicator = UIPageControl.appearance()
    
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            Image(tabs[selectedTab].image)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(tabs) {tab in
                        Group {
                            OnboardingSingleView(content: tab)
                        }
                        .tag(tab.tag)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .animation(.smooth, value: selectedTab)
                
                
                
                CustomDotIndicator(count: tabs.count, selectedTab: $selectedTab)
                    
            }
            .padding(.bottom, 70)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
}
