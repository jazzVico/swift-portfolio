//
//  ContentView.swift
//  portfolio-swift
//
//  Created by Jazmin Vico on 03/01/2025.
//

import SwiftUI

struct ContentView: View {
	var body: some View{
		TabView{

			HomeView()
				.tabItem{
					Image(systemName: "house")
					
					Text("home")
				}
		}
	}
}

#Preview {
    ContentView()
}
