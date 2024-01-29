//
//  OnboardView.swift
//  iSwiftAssignment1
//
//  Created by roxx on 1/29/24.
//
import SwiftUI

struct OnboardingSingleView: View {
    var content: Onboarding
    
    var body: some View {
        VStack {
            ZStack {
                Image(content.image)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 10) {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Text(content.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .lineLimit(2, reservesSpace: true)
                    Text(content.description)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)
                    Spacer(minLength: 0)
                                        
                }
                .padding(.horizontal, 50)
            }
        }
    }
}

#Preview {
    OnboardingSingleView(content: Onboarding.data[0])
}
