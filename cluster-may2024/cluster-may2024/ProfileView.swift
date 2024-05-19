//
//  ProfileView.swift
//  cluster-may2024
//
//  Created by Sarah Haddix on 5/4/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // TODO: Figure out image clipping - figure out bounds of given image
            AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnVJcJxOShs1WagaQbmw8yJThVbyAZEBa2-RXjEuNkNA&s")) { phase in
                if let image = phase.image {
                    image // Displays the loaded image.
                        .resizable()
                        .scaledToFit()
                } else if phase.error != nil {
                    Color.red // Indicates an error.
                } else {
                    Color.blue // Acts as a placeholder.
                }
            }
            .frame(width: 150, height: 150)
            .padding()
            ZStack {
                HStack(alignment: .center) {
                    Spacer()
                    Button{
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 50)
                            Text("Stats")
                                .foregroundStyle(.white)
                            
                        }
                    }
                    Spacer()
                    Spacer()
                    Button{
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 100, height: 50)
                            Text("Followers")
                                .foregroundStyle(.white)
                            
                        }
                    }
                    Spacer()
                }
            }
            ScrollView() {
                Text("Example Text")
                    .frame(maxWidth: .infinity)
                    .padding()
                Text("Example Text")
                    .padding()
                Text("Example Text")
                    .padding()
                Text("Example Text")
                    .padding()
                Text("Example Text")
                    .padding()
                Text("Example Text")
                    .padding()
                Text("Example Text")
                    .padding()
                Text("Example Text")
                    .padding()
                Text("Example Text")
                    .padding()
                Text("Example Text")
                    .padding()
            }
        }
    }
}

#Preview {
    ProfileView()
}
