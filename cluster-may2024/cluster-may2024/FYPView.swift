//
//  FYPView.swift
//  cluster-may2024
//
//  Created by Sarah Haddix on 5/15/24.
//

import SwiftUI

// TODO: Look up how to do this, probably pretty standard

struct FYPView: View {
    var body: some View {
        VStack {
            Text("My FYP")
                .bold()
                .font(.title)
                .padding()
            HStack(spacing: 50) {
                Text("Cluster")
                Text("Clique")
                Text("Follows")
            }
            .padding(.bottom)
            HStack {
                Text("User")
                Image(systemName: "plus")
                Text("Clique")
                Image(systemName: "plus")
                Spacer()
            }
            .padding(.horizontal)
            ZStack {
                Image("endofbeginning")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 380)
                Circle()
                    .frame(width: 120)
                    .opacity(0.8)
                Image(systemName: "play.fill")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
            }
            HStack {
                Spacer()
                Group {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .foregroundStyle(.yellow)
                .font(.title)
                
            }
            Text("End of Beginning")
                .bold()
                .font(.title2)
                .padding(.top)
            Text("Djo")
            Text("EXAMPLE REVIEW/CAPTION, COMMENTS BUTTON SOMEWHERE, LAYOUT SUBJECT TO CHANGE")
                .multilineTextAlignment(.center)
            Image(systemName: "chevron.down")
                .padding(.top)
        }
    }
}

#Preview {
    FYPView()
}
