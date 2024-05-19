//
//  UserCliquesView.swift
//  cluster-may2024
//
//  Created by Sarah Haddix on 5/19/24.
//

import SwiftUI

// TODO: use form and search feature
// change from corner radius

let cliqueList: [String] = ["Clique 1", "Clique 2", "Clique 3", "Clique 4"]

struct UserCliquesView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(width: 300, height: 25)
                    .cornerRadius(10.0)
                    .foregroundStyle(.lightGrey)
                Image(systemName: "magnifyingglass")
                    .font(.title2)
            }
            .padding(.vertical)
            ScrollView {
                ForEach(cliqueList, id: \.self) { clique in
                    ZStack {
                        Rectangle()
                            .frame(width: 350, height: 65)
                            .cornerRadius(10.0)
                            .padding()
                            .foregroundStyle(.lightGrey)
                        HStack {
                            Image(systemName: "circle")
                                .font(.title2)
                                .bold()
                                .padding(.leading)
                                .padding(.leading)
                                .padding(.leading)
                            Text(clique)
                                .font(.title)
                                .bold()
                            Spacer()
                        }
                    }
                }
                Image(systemName: "plus.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }
    }
}

#Preview {
    UserCliquesView()
}
