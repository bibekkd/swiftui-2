//
//  FrameworkDetailView.swift
//  Apple-framework
//
//  Created by Bibek Dey on 02/08/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
                    
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com")!))
        })
    }
}

#Preview {
    FrameworkDetailView(
        framework: Framework(
            name: "App Clips",
            imageName: "app-clip",
            urlString: "https://developers.apple.com/app-clips",
            description: "An App Clip is a small part of your app that's discoverable at the moment it's needed and lets people complete a quick task from your app — even before installing your full app.\n\nWhether ordering take-out from a restaurant, renting a scooter, or setting up a new connected appliance for the first time, people can launch the App Clip to easily start and finish the task. And once the task is done, you can offer the opportunity to download your full app from the App Store."
        ),
        isShowingDetailView: .constant(true)
    )
}
