//
//  FrameworkTitleView.swift
//  FrameworkTitleView
//
//  Created by Lukasz Dziwosz on 06/09/2021.
//

import SwiftUI

struct FrameworkTitileView: View {
    let framework: Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitileView(framework: MockData.frameworks[1])
    }
}
