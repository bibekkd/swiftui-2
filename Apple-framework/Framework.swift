//
//  Framework.swift
//  Apple-framework
//
//  Created by Bibek Dey on 25/07/25.
//

import Foundation


struct Framework: Hashable {
    let id = UUID()
    
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}


struct MockData {
    static let frameworks = [
        Framework(name: "App Clips",
                  imageName: "app-clip",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        
        Framework(name: "ARKit",
                  imageName: "arkit",
                  urlString: "https://developers.apple.com/augmented-reality/arkit",
                  description: "App Clips are nice"),
        
        Framework(name: "CarPlay",
                  imageName: "carplay",
                  urlString: "https://developers.apple.com/carplay",
                  description: "App Clips are nice"),
        Framework(name: "Catalyst",
                  imageName: "catalyst",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Class Kit",
                  imageName: "classkit",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Cloud Kit",
                  imageName: "cloudkit",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Core ML",
                  imageName: "coreml",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Health Kit",
                  imageName: "healthkit",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Map Kit",
                  imageName: "mapkit",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Metal",
                  imageName: "metal",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Siri Kit",
                  imageName: "sirikit",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Sprite Kit",
                  imageName: "spritekit",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Swift UI",
                  imageName: "swiftui",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Tip Kit",
                  imageName: "tipkit",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Test Flight",
                  imageName: "test-flight",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Widget Kit",
                  imageName: "widgetkit",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "Wallet",
                  imageName: "wallet",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
        Framework(name: "SF Symbols",
                  imageName: "sf-symbols",
                  urlString: "https://developers.apple.com/app-clips",
                  description: "App Clips are nice."),
    ]
}
