//
//  FrameworkGridView.swift
//  Apple-framework
//
//  Created by Bibek Dey on 31/07/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(
                        MockData.frameworks,
                        id: \.id) { framework in
                            FrameworkTitleView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                        }
                }.padding(.top)
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(
                    framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}



