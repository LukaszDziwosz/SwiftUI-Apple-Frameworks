//
//  FrameworkDetailView.swift
//  FrameworkDetailView
//
//  Created by Lukasz Dziwosz on 05/09/2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitileView(framework: framework)
            ScrollView {
                Text(framework.description)
                    .font(.body)
                .padding()
            }
            Spacer()
            Button{
                isShowingSafariView = true
              } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[1], isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
