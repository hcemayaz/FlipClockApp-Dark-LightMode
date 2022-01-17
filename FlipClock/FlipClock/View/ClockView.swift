//
//  ClockView.swift
//  FlipClock
//
//  Created by cemayaz on 17.01.2022.
//
import SwiftUI

struct ClockView: View {

    let viewModel = ClockViewModel()
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some View {
        NavigationView{
            
        VStack{
            Picker("Mode", selection: $isDarkMode){
                Text("Light")
                    .tag(false)
                Text("Dark")
                    .tag(true)
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            Spacer()
        HStack(spacing: 15) {
            HStack(spacing: 5) {
                FlipView(viewModel: viewModel.flipViewModels[0])
                FlipView(viewModel: viewModel.flipViewModels[1])
            }
            HStack(spacing: 5) {
                FlipView(viewModel: viewModel.flipViewModels[2])
                FlipView(viewModel: viewModel.flipViewModels[3])
            }
            HStack(spacing: 5) {
                FlipView(viewModel: viewModel.flipViewModels[4])
                FlipView(viewModel: viewModel.flipViewModels[5])
            }
        }
            Spacer()
        }
        }.navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal){
                    VStack{
                        Text("Mode Switch").font(.headline)
                        
                    }
                }
            }
        .preferredColorScheme(isDarkMode ? .dark : .light)
            .accentColor(.primary)
            
    }

}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView()
    }
}
