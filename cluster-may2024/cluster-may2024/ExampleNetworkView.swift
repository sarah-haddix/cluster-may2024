//
//  ExampleNetworkView.swift
//  cluster-may2024
//
//  Created by Sarah Haddix on 5/18/24.
//

import SwiftUI
/*
let networkService: ApprenticeshipService = ApprenticeshipService()

struct ExampleNetworkView: View {
    var body: some View {
        Text(networkService.fetchSingleApprentice())
    }
}

#Preview {
    ExampleNetworkView()
}
*/

// ApprenticeshipViewModel.swift
@MainActor class ApprenticeshipViewModel: ObservableObject {    private let service = ApprenticeshipService()
    @Published var apprentice: String? = nil
    @Published var errorMessage: String? = nil
    /*
    func fetchSingleApprentice() {
        Task {
            do {
                let name = try await service.fetchApprentice()
                self.apprentice = name
            } catch (let error) {
                self.errorMessage = String(describing: error)
            }
        }
    }
     */
}
