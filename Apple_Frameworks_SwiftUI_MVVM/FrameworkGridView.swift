//
//  ContentView.swift
//  Apple_Frameworks_SwiftUI_MVVM
//
//  Created by Lukasz Dziwosz on 05/09/2021.
//

import SwiftUI

struct FrameworkGridView: View {
   
    var body: some View {
        ZStack{
            VStack{
                Image("classkit")
                
                Text("CloudKit")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
