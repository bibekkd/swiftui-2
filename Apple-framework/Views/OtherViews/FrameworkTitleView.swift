//
//  FrameworkTitleView.swift
//  Apple-framework
//
//  Created by Bibek Dey on 03/08/25.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(
                    width: 90,
                    height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding(.all)
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
