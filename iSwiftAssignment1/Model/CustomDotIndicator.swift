//
//  CustomDotIndicator.swift
//  iSwiftAssignment1
//
//  Created by roxx on 1/29/24.
//

import SwiftUI

struct CustomDotIndicator: View {
    let count: Int
    
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            ForEach(0..<count, id:\.self) { tab in
                if tab == selectedTab {
                    Rectangle()
                        .frame(width: 20, height: 10)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .foregroundStyle(.orange)
                        .onTapGesture {
                            selectedTab = tab
                        }
                } else {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(.white)
                        .onTapGesture {
                            selectedTab = tab
                        }
                }
            }
        }
        .animation(.easeOut, value: selectedTab)
        .backgroundStyle(.white.opacity(0.1))
    }
}

#Preview {
    @State var selectedTab = 0
    return CustomDotIndicator(count: 6, selectedTab: $selectedTab)
}
