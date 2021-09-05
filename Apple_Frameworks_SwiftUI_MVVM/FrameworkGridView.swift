//
//  ContentView.swift
//  Apple_Frameworks_SwiftUI_MVVM
//
//  Created by Lukasz Dziwosz on 05/09/2021.
//

import SwiftUI

struct FrameworkGridView: View {

    init(){
        UINavigationBar.appearance().titleTextAttributes = [
            .font : UIFont.systemFont(ofSize: 30)
        ]
    }
    let columns:[GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())
    ]
   
    var body: some View {
        ZStack{
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns){
                        ForEach(MockData.frameworks, id: \.id){ framework in
                            FrameworkTitileView(framework: framework)
                        }
                    }
                }
                .navigationBarTitle("🍎 Frameworks", displayMode: .inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

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
