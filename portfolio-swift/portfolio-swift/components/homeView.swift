//
//  homeView.swift
//  portfolio-swift
//
//  Created by Jazmin Vico on 03/01/2025.
//

import SwiftUI


struct HomeView: View{
	
	private let cards: [Card] = [
		Card(title: "Theming", image: "theme_image"),
		Card(title: "Animations", image: "animation_image"),
		Card(title: "Gestures", image: "gestures_image"),
		Card(title: "Accesibility", image: "accesibility_image")
	]
	
	
	let buffer = 3
	var totalElements = 0

	
	var body: some View {
		VStack{
			ScrollView(.horizontal){
				HStack{
					Card(title: "Theming", image: "theme_image")
					Spacer()
					Card(title: "Animations", image: "animation_image")
					Spacer()
					Card(title: "Gestures", image: "gestures_image")
					Spacer()
					Card(title: "Accesibility", image: "accesibility_image")
				}
				.safeAreaPadding()
				.scrollIndicators(.hidden)
			}
			.scrollBounceBehavior(.always)
			.gesture(
				DragGesture()

			)


		}
		
	}
}

struct Card: View {
	var title: String
	var image: String

	var body: some View {
		GroupBox{
			HStack{
				
				Image(image).resizable()
				 .aspectRatio(contentMode: .fit)
				Spacer()
				Text(title)
		
				
			}
			.padding([.vertical],8)
			.frame(width: 200, height: 100)

		}
		.compositingGroup()
		.shadow(radius: 5)
	

	}
		
		
	}
