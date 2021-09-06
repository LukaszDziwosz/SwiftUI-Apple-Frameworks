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
            .font : UIFont.systemFont(ofSize: 30)]
    }
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
 
   
    var body: some View {
        ZStack{
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: viewModel.columns){
                        ForEach(MockData.frameworks, id: \.id){ framework in
                            FrameworkTitileView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                        }
                    }
                }
                .navigationBarTitle("🍎 Frameworks", displayMode: .inline)
                .sheet(isPresented: $viewModel.isShowingDetailView){
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.frameworks[1],
                isShowingDetailView: $viewModel.isShowingDetailView)
                }
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


