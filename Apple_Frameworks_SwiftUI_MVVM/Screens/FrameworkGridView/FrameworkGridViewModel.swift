//
//  FrameworkGridViewModel.swift
//  FrameworkGridViewModel
//
//  Created by Lukasz Dziwosz on 06/09/2021.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet{ isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let columns:[GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
}
